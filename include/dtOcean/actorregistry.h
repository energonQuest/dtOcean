#include <dtCore/actorpluginregistry.h>
#include <dtOcean/export.h>

class DT_OCEAN_EXPORT OceanActorRegistry : public dtCore::ActorPluginRegistry
{
public:
   static dtCore::RefPtr<dtCore::ActorType> OCEAN_ACTOR_TYPE; 
   static dtCore::RefPtr<dtCore::ActorType> OCEAN_CONFIG_ACTOR_TYPE; 
   static dtCore::RefPtr<dtCore::ActorType> OCEAN_CLAMP_ACTOR_TYPE; 

   OceanActorRegistry();
   void RegisterActorTypes();
};
