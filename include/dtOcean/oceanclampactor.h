#pragma once

#include <dtActors/gamemeshactor.h>
#include <dtGame/gameactor.h>
#include <dtGame/defaultgroundclamper.h>
#include "export.h"

namespace osgOcean
{
    class OceanScene;
    class FFTOceanSurface;
}

namespace dtCore
{
    class Transform;
}

namespace dtGame
{
    class TickMessage;
}
///////////////////////////////////////////////////////////////////////////////
namespace dtOcean
{
    class OceanClampActorProxy;
    class OceanActor;

    class DT_OCEAN_EXPORT OceanClampActor : public dtActors::GameMeshActor,
        public dtGame::DefaultGroundClamper
    {
    public:
        typedef dtActors::GameMeshActor BaseClass;

        /** CTor */
        OceanClampActor(dtGame::GameActorProxy& proxy);
        ~OceanClampActor();

        void OnEnteredWorld();
        void ProcessMessage(const dtGame::Message& msg);
        virtual void OnTickLocal(const dtGame::TickMessage& tickMessage);

    private:

        void OnMapLoaded();
        void Build();
        void SetOceanActor();
        void Update();

        dtOcean::OceanActor* mOceanActor;
    };

    // -----------------------------------------------

    class DT_OCEAN_EXPORT OceanClampActorProxy : public dtActors::GameMeshActorProxy
    {
        typedef dtActors::GameMeshActorProxy BaseClass;

    public:
        OceanClampActorProxy();
        virtual void CreateDrawable();
        virtual void BuildPropertyMap();

    protected:
        virtual ~OceanClampActorProxy();
    };

} // namespace dtOcean
