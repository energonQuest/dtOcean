#include "dtOcean/oceanclampactor.h"
#include "dtOcean/oceanactor.h"

#include <osgOcean/OceanScene>
#include <osgOcean/FFTOceanSurface>
#include <dtOcean/oceanconfigactor.h>
#include <dtCore/scene.h>
#include <dtCore/transform.h>

#include <dtABC/application.h>
#include <dtCore/enginepropertytypes.h>
#include <dtCore/deltawin.h>
#include <dtCore/environment.h>
#include <dtGame/gamemanager.h>
#include <dtGame/messagetype.h>
#include <dtGame/message.h>
#include <dtUtil/exception.h>
#include <osg/PositionAttitudeTransform>

using namespace dtOcean;

OceanClampActor::OceanClampActor(dtGame::GameActorProxy& proxy)
   : BaseClass(proxy)
   , mOceanActor(NULL)
{
}


OceanClampActor::~OceanClampActor()
{
}


void OceanClampActor::OnEnteredWorld()
{
   // get informed about enabled debug drawing
   GetGameActorProxy().RegisterForMessages(dtGame::MessageType::INFO_MAP_LOADED,
      dtGame::GameActorProxy::PROCESS_MSG_INVOKABLE);
   GetGameActorProxy().RegisterForMessages(dtGame::MessageType::TICK_LOCAL,
      dtGame::GameActorProxy::TICK_LOCAL_INVOKABLE);
}


void OceanClampActor::ProcessMessage(const dtGame::Message& msg)
{
   if (msg.GetMessageType() == dtGame::MessageType::INFO_MAP_LOADED)
   {
      OnMapLoaded();
   }
}

void OceanClampActor::OnTickLocal(const dtGame::TickMessage& tickMessage)
{
    BaseClass::OnTickLocal(tickMessage);
    Update();
}

void OceanClampActor::Update()
{
    SetOceanActor();
    if(mOceanActor != NULL)
    {
        osg::Vec3 xRot = GetGameActorProxy().GetRotation();
        osg::Vec3 xLoc = GetGameActorProxy().GetTranslation();
        dtCore::Transform xform(xLoc.x(), xLoc.y(), xLoc.z(),
            xRot._v[0], xRot._v[1], xRot._v[2]);
        osg::Matrix mat;
        osg::Matrix rot;
        xform.Get(mat);
        osg::Vec3 normal;
        xLoc.z() = mOceanActor->GetOceanSurfaceHeightAt(xLoc.x(),xLoc.y(),&normal);
        mat.getRotate().get(rot);
        dtGame::GroundClampingData data;
        RuntimeData& rtData = GetOrCreateRuntimeData(data);
        OrientTransform(xform, rot, xLoc, normal);
        
        GetGameActorProxy().SetRotation(xform.GetRotation());
        GetGameActorProxy().SetTranslation(xform.GetTranslation());
    }
}

void OceanClampActor::SetOceanActor()
{
    if(mOceanActor == NULL)
    {
        dtGame::GameManager* gm = GetGameActorProxy().GetGameManager();
        const dtCore::ActorType* type = gm->FindActorType("dtOcean", "OceanActor");
        dtCore::ActorProxy* proxy = NULL;
        gm->FindActorByType(*type, proxy);

        mOceanActor = proxy
            ? static_cast<OceanActor*>(proxy->GetActor())
            : NULL;
    }
}

void OceanClampActor::OnMapLoaded()
{
    SetOceanActor();
   //if (mConfig == NULL)
   //{
   //   dtGame::GameManager* gm = GetGameActorProxy().GetGameManager();
   //   const dtCore::ActorType* type = gm->FindActorType("dtOcean", "OceanConfigActor");
   //   dtCore::ActorProxy* proxy = NULL;
   //   gm->FindActorByType(*type, proxy);

   //   OceanConfigActor* configActor = proxy
   //      ? static_cast<OceanConfigActor*>(proxy->GetActor())
   //      : new OceanConfigActor();

   //   SetConfig(configActor);

	  //const dtCore::ActorType* type2 = gm->FindActorType("dtOcean", "OceanConfigActor");
   //   dtCore::ActorProxy* proxy2 = NULL;
   //   gm->FindActorByType(*type2, proxy2);
 
   //}
}


// --------------------------------------------

OceanClampActorProxy::OceanClampActorProxy()
   : BaseClass()
{
   SetClassName("dtOcean::OceanClampActor");
}


OceanClampActorProxy::~OceanClampActorProxy()
{
}


void OceanClampActorProxy::CreateDrawable()
{
   OceanClampActor* actor = new OceanClampActor(*this);
   SetDrawable(*actor);
}


void OceanClampActorProxy::BuildPropertyMap()
{
   BaseClass::BuildPropertyMap();
   static const std::string GROUPNAME = "dtOcean";

   using namespace dtCore;

   OceanClampActor* actor;
   GetActor(actor);
}