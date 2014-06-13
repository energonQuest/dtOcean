#include <dtOcean/actorregistry.h>

#include <dtOcean/oceanactor.h>
#include <dtOcean/oceanconfigactor.h>
#include <dtOcean/oceanclampactor.h>

using namespace dtOcean;

dtCore::RefPtr<dtCore::ActorType> OceanActorRegistry::OCEAN_ACTOR_TYPE(new dtCore::ActorType("OceanActor", "dtOcean",
                                                                                   "OSGOcean actor"));
dtCore::RefPtr<dtCore::ActorType> OceanActorRegistry::OCEAN_CONFIG_ACTOR_TYPE(new dtCore::ActorType("OceanConfigActor", "dtOcean",
                                                                                            "OSGOceanConfigActor"));
dtCore::RefPtr<dtCore::ActorType> OceanActorRegistry::OCEAN_CLAMP_ACTOR_TYPE(new dtCore::ActorType("OceanClampActor", "dtOcean",
                                                                                            "Ocean Clamp Actor"));
//////////////////////////////////////////////////////////////////////////
extern "C" DT_OCEAN_EXPORT dtCore::ActorPluginRegistry* CreatePluginRegistry()
{
   return new OceanActorRegistry;
}

extern "C" DT_OCEAN_EXPORT void DestroyPluginRegistry(dtCore::ActorPluginRegistry* registry)
{
   if (registry)
   {
      delete registry;
   }
}

OceanActorRegistry::OceanActorRegistry() : dtCore::ActorPluginRegistry("dtOcean Library")
{
   mDescription = "All game actors for dtOcean";
}

void OceanActorRegistry::RegisterActorTypes()
{   
   //OceanActor/OceanActorProxy
   mActorFactory->RegisterType<dtOcean::OceanActorProxy>(OCEAN_ACTOR_TYPE.get());

   //OceanConfigActor/OceanConfigActorProxy
   mActorFactory->RegisterType<dtOcean::OceanConfigActorProxy>(OCEAN_CONFIG_ACTOR_TYPE.get());

   //OceanClampActor/OceanClampActorProxy
   mActorFactory->RegisterType<dtOcean::OceanClampActorProxy>(OCEAN_CLAMP_ACTOR_TYPE.get());
}
