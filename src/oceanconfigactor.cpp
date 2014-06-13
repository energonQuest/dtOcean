#include <dtOcean/oceanconfigactor.h>

#include <dtCore/enginepropertytypes.h>
#include <dtCore/resourceactorproperty.h>
#include <dtUtil/exception.h>

using namespace dtOcean;

const std::string OceanConfigActor::CLASS_NAME("dtOcean::OceanConfigActor");

OceanConfigActor::OceanConfigActor()
   : BaseClass()
   , mFFTGridSize(64)
   , mResolution(256)
   , mNumTiles(17)
   , mWindDirection(osg::Vec2f(1.0f,1.0f))
   , mWindSpeed(12.f)
   , mDepth(10000)
   , mWaveScale((float)1e-8)
   , mIsChoppy(true)
   , mChoppyFactor(-2.5f)
   , mAnimLoopTime(10.0f)
   , mNumFrames(256)
   , mFoamBottomHeight(2.2f)
   , mFoamTopHeight(3.0f)
   , mEnableCrestFoam(true)
   , mLightColor(osg::Vec4(0.5f, 0.5f, 0.6f, 1))
   , mEnableEndlessOcean(true)
   , mEnableReflections(true)
   , mEnableRefractions(true)
   , mAboveWaterFogHeight(0.0012f)
   , mUnderWaterFogHeight(0.002f)
   , mAboveWaterFogColor(osg::Vec4(0.8f, 0.9f, 0.9f, 1))
   , mUnderWaterFogColor(osg::Vec4(0.1f, 0.2f, 0.4f, 1))
   , mUnderWaterDiffuseColor(osg::Vec4(0.1f, 0.3f, 0.4f, 1))
   , mUnderWaterAttentuation(osg::Vec3f(0.015f, 0.0075f, 0.005f))
   , mSunDirection(osg::Vec3(520.f, 1900.f, 550.f))
   , mEnableGodRays(true)
   , mEnableSilt(true)
   , mEnableUnderwaterDOF(true)
   , mEnableGlare(true)
   , mGlareAttentuation(0.8f)
   , mSkyBoxRadius(1900.f)
   , mSkyBoxLongSteps(16)
   , mSunDiffuseColor(osg::Vec4(0.7f, 0.7f, 0.7f, 1))
   , mSkyBoxLatSteps(16)
   , mUseDefaultSceneShader(true)
   , mReflectionDamping(0.35f)
   , mOceanHeight(0)
{
   SetName("OceanConfigActor");
}

// --------------------------------------------

OceanConfigActorProxy::OceanConfigActorProxy()
   : BaseClass()
{
   SetClassName("dtOcean::OceanConfigActor");
}


OceanConfigActorProxy::~OceanConfigActorProxy()
{
}


void OceanConfigActorProxy::CreateDrawable()
{
   SetDrawable(*new OceanConfigActor());
}


void OceanConfigActorProxy::BuildPropertyMap()
{
   //BaseClass::BuildPropertyMap();
   static const std::string GROUPNAME = "dtOcean";
   static const std::string GROUPNAME_SKY = "SkyBox";

   using namespace dtCore;

   OceanConfigActor* actor;
   GetActor(actor);

   AddProperty(new dtCore::DoubleActorProperty("Ocean Height", "Ocean Height",
      dtCore::DoubleActorProperty::SetFuncType(actor, &OceanConfigActor::SetOceanHeight),
      dtCore::DoubleActorProperty::GetFuncType(actor, &OceanConfigActor::GetOceanHeight),
      "Height of the ocean's surface",
      GROUPNAME));

   AddProperty(new dtCore::BooleanActorProperty("Use Default Scene Shader", "Use Default Scene Shader",
      dtCore::BooleanActorProperty::SetFuncType(actor, &OceanConfigActor::SetUseDefaultSceneShader),
      dtCore::BooleanActorProperty::GetFuncType(actor, &OceanConfigActor::GetUseDefaultSceneShader),
      "",
      GROUPNAME));

   AddProperty(new dtCore::BooleanActorProperty("Enable Crest Foam", "Enable Crest Foam",
      dtCore::BooleanActorProperty::SetFuncType(actor, &OceanConfigActor::SetEnableCrestFoam),
      dtCore::BooleanActorProperty::GetFuncType(actor, &OceanConfigActor::GetEnableCrestFoam),
      "Render foam on the crests",
      GROUPNAME));

   AddProperty(new dtCore::BooleanActorProperty("Enable Endless Ocean", "Enable Endless Ocean",
      dtCore::BooleanActorProperty::SetFuncType(actor, &OceanConfigActor::SetEnableEndlessOcean),
      dtCore::BooleanActorProperty::GetFuncType(actor, &OceanConfigActor::GetEnableEndlessOcean),
      "",
      GROUPNAME));

   AddProperty(new dtCore::BooleanActorProperty("Enable Reflections", "Enable Reflections",
      dtCore::BooleanActorProperty::SetFuncType(actor, &OceanConfigActor::SetEnableReflections),
      dtCore::BooleanActorProperty::GetFuncType(actor, &OceanConfigActor::GetEnableReflections),
      "",
      GROUPNAME));

    AddProperty(new dtCore::FloatActorProperty("Reflection Damping", "Reflection Damping",
      dtCore::FloatActorProperty::SetFuncType(actor, &OceanConfigActor::SetReflectionDamping),
      dtCore::FloatActorProperty::GetFuncType(actor, &OceanConfigActor::GetReflectionDamping),
      "",
      GROUPNAME));

   AddProperty(new dtCore::BooleanActorProperty("Enable Refractions", "Enable Refractions",
      dtCore::BooleanActorProperty::SetFuncType(actor, &OceanConfigActor::SetEnableRefractions),
      dtCore::BooleanActorProperty::GetFuncType(actor, &OceanConfigActor::GetEnableRefractions),
      "",
      GROUPNAME));

   AddProperty(new dtCore::BooleanActorProperty("Enable God Rays", "Enable God Rays",
      dtCore::BooleanActorProperty::SetFuncType(actor, &OceanConfigActor::SetEnableGodRays),
      dtCore::BooleanActorProperty::GetFuncType(actor, &OceanConfigActor::GetEnableGodRays),
      "",
      GROUPNAME));

   AddProperty(new dtCore::BooleanActorProperty("Enable Silt", "Enable Silt",
      dtCore::BooleanActorProperty::SetFuncType(actor, &OceanConfigActor::SetEnableSilt),
      dtCore::BooleanActorProperty::GetFuncType(actor, &OceanConfigActor::GetEnableSilt),
      "",
      GROUPNAME));

   AddProperty(new dtCore::BooleanActorProperty("Enable Underwater DOF", "Enable Underwater DOF",
      dtCore::BooleanActorProperty::SetFuncType(actor, &OceanConfigActor::SetEnableUnderwaterDOF),
      dtCore::BooleanActorProperty::GetFuncType(actor, &OceanConfigActor::GetEnableUnderwaterDOF),
      "Enable underwater depth of field",
      GROUPNAME));

   AddProperty(new dtCore::BooleanActorProperty("Enable Glare", "Enable Glare",
      dtCore::BooleanActorProperty::SetFuncType(actor, &OceanConfigActor::SetEnableGlare),
      dtCore::BooleanActorProperty::GetFuncType(actor, &OceanConfigActor::GetEnableGlare),
      "Enable cross hatch glare.",
      GROUPNAME));

   AddProperty(new dtCore::IntActorProperty("FFT Grid Size", "FFT Grid Size",
      dtCore::IntActorProperty::SetFuncType(actor, &OceanConfigActor::SetFFTGridSize),
      dtCore::IntActorProperty::GetFuncType(actor, &OceanConfigActor::GetFFTGridSize),
      "",
      GROUPNAME));

   AddProperty(new dtCore::IntActorProperty("Resolution", "Resolution",
      dtCore::IntActorProperty::SetFuncType(actor, &OceanConfigActor::SetResolution),
      dtCore::IntActorProperty::GetFuncType(actor, &OceanConfigActor::GetResolution),
      "",
      GROUPNAME));

   AddProperty(new dtCore::IntActorProperty("Number of Tiles", "Number of Tiles",
      dtCore::IntActorProperty::SetFuncType(actor, &OceanConfigActor::SetNumTiles),
      dtCore::IntActorProperty::GetFuncType(actor, &OceanConfigActor::GetNumTiles),
      "",
      GROUPNAME));

   AddProperty(new dtCore::Vec2ActorProperty("Wind Direction", "Wind Direction",
      dtCore::Vec2ActorProperty::SetFuncType(actor, &OceanConfigActor::SetWindDirection),
      dtCore::Vec2ActorProperty::GetFuncType(actor, &OceanConfigActor::GetWindDirection),
      "Change the wind's direction",
      GROUPNAME));

   AddProperty(new dtCore::FloatActorProperty("Wind Speed", "Wind Speed",
      dtCore::FloatActorProperty::SetFuncType(actor, &OceanConfigActor::SetWindSpeed),
      dtCore::FloatActorProperty::GetFuncType(actor, &OceanConfigActor::GetWindSpeed),
      "Change the wind speed, makes bigger waves",
      GROUPNAME));

   AddProperty(new dtCore::FloatActorProperty("Depth", "Depth",
      dtCore::FloatActorProperty::SetFuncType(actor, &OceanConfigActor::SetDepth),
      dtCore::FloatActorProperty::GetFuncType(actor, &OceanConfigActor::GetDepth),
      "",
      GROUPNAME));

   AddProperty(new dtCore::FloatActorProperty("Wave Scale", "Wave Scale",
      dtCore::FloatActorProperty::SetFuncType(actor, &OceanConfigActor::SetWaveScale),
      dtCore::FloatActorProperty::GetFuncType(actor, &OceanConfigActor::GetWaveScale),
      "Wave scale factor (typically very small ~1e-8)",
      GROUPNAME));

   AddProperty(new dtCore::BooleanActorProperty("Is Choppy", "Is Choppy",
      dtCore::BooleanActorProperty::SetFuncType(actor, &OceanConfigActor::SetIsChoppy),
      dtCore::BooleanActorProperty::GetFuncType(actor, &OceanConfigActor::GetIsChoppy),
      "Enable/Disable choppy wave geometry",
      GROUPNAME));

   AddProperty(new dtCore::FloatActorProperty("Choppy Factor", "Choppy Factor",
      dtCore::FloatActorProperty::SetFuncType(actor, &OceanConfigActor::SetChoppyFactor),
      dtCore::FloatActorProperty::GetFuncType(actor, &OceanConfigActor::GetChoppyFactor),
      "Change the choppy wave factor",
      GROUPNAME));

   AddProperty(new dtCore::FloatActorProperty("Anim Loop Time", "Anim Loop Time",
      dtCore::FloatActorProperty::SetFuncType(actor, &OceanConfigActor::SetAnimLoopTime),
      dtCore::FloatActorProperty::GetFuncType(actor, &OceanConfigActor::GetAnimLoopTime),
      "",
      GROUPNAME));

   AddProperty(new dtCore::IntActorProperty("Number of Frames", "Number of Frames",
      dtCore::IntActorProperty::SetFuncType(actor, &OceanConfigActor::SetNumFrames),
      dtCore::IntActorProperty::GetFuncType(actor, &OceanConfigActor::GetNumFrames),
      "",
      GROUPNAME));

   AddProperty(new dtCore::FloatActorProperty("SkyBox Radius", "SkyBox Radius",      
      dtCore::FloatActorProperty::SetFuncType(actor, &OceanConfigActor::SetSkyBoxRadius),
      dtCore::FloatActorProperty::GetFuncType(actor, &OceanConfigActor::GetSkyBoxRadius),
      "Sets the sky box radius",
      GROUPNAME_SKY));

   AddProperty(new dtCore::ResourceActorProperty(*this, dtCore::DataType::TEXTURE,
      "Skybox Up", "Skybox Up",
      dtCore::ResourceActorProperty::SetFuncType(actor, &OceanConfigActor::SetSkyBoxUp),
      "Sets the sky box texture",
      GROUPNAME_SKY));

   AddProperty(new dtCore::ResourceActorProperty(*this, dtCore::DataType::TEXTURE,
      "Skybox Down", "Skybox Down",
      dtCore::ResourceActorProperty::SetFuncType(actor, &OceanConfigActor::SetSkyBoxDown),
      "Sets the sky box texture",
      GROUPNAME_SKY));

   AddProperty(new dtCore::ResourceActorProperty(*this, dtCore::DataType::TEXTURE,
      "Skybox Left", "Skybox Left",
      dtCore::ResourceActorProperty::SetFuncType(actor, &OceanConfigActor::SetSkyBoxLeft),
      "Sets the sky box texture",
      GROUPNAME_SKY));

   AddProperty(new dtCore::ResourceActorProperty(*this, dtCore::DataType::TEXTURE,
      "Skybox Right", "Skybox Right",
      dtCore::ResourceActorProperty::SetFuncType(actor, &OceanConfigActor::SetSkyBoxRight),
      "Sets the sky box texture",
      GROUPNAME_SKY));

   AddProperty(new dtCore::ResourceActorProperty(*this, dtCore::DataType::TEXTURE,
      "Skybox Front", "Skybox Front",
      dtCore::ResourceActorProperty::SetFuncType(actor, &OceanConfigActor::SetSkyBoxFront),
      "Sets the sky box texture",
      GROUPNAME_SKY));

   AddProperty(new dtCore::ResourceActorProperty(*this, dtCore::DataType::TEXTURE,
      "Skybox Back", "Skybox Back",
      dtCore::ResourceActorProperty::SetFuncType(actor, &OceanConfigActor::SetSkyBoxBack),
      "Sets the sky box texture",
      GROUPNAME_SKY));

   AddProperty(new dtCore::FloatActorProperty("Foam Bottom Height", "Foam Bottom Height",
      dtCore::FloatActorProperty::SetFuncType(actor, &OceanConfigActor::SetFoamBottomHeight),
      dtCore::FloatActorProperty::GetFuncType(actor, &OceanConfigActor::GetFoamBottomHeight),
      "",
      GROUPNAME));

   AddProperty(new dtCore::FloatActorProperty("Foam Top Height", "Foam Top Height",
      dtCore::FloatActorProperty::SetFuncType(actor, &OceanConfigActor::SetFoamTopHeight),
      dtCore::FloatActorProperty::GetFuncType(actor, &OceanConfigActor::GetFoamTopHeight),
      "",
      GROUPNAME));

   AddProperty(new dtCore::ColorRgbaActorProperty("Light Color", "Light Color",
      dtCore::ColorRgbaActorProperty::SetFuncType(actor, &OceanConfigActor::SetLightColor),
      dtCore::ColorRgbaActorProperty::GetFuncType(actor, &OceanConfigActor::GetLightColor),
      "color of sun",
      GROUPNAME));

   AddProperty(new dtCore::FloatActorProperty("Above Water Fog Height", "Above Water Fog Height",
      dtCore::FloatActorProperty::SetFuncType(actor, &OceanConfigActor::SetAboveWaterFogHeight),
      dtCore::FloatActorProperty::GetFuncType(actor, &OceanConfigActor::GetAboveWaterFogHeight),
      "Above water fog density (EXP fog)",
      GROUPNAME));

   AddProperty(new dtCore::FloatActorProperty("Under Water Fog Height", "Under Water Fog Height",
      dtCore::FloatActorProperty::SetFuncType(actor, &OceanConfigActor::SetUnderWaterFogHeight),
      dtCore::FloatActorProperty::GetFuncType(actor, &OceanConfigActor::GetUnderWaterFogHeight),
      "Under water fog density (EXP fog)",
      GROUPNAME));

   AddProperty(new dtCore::ColorRgbaActorProperty("Above Water Fog Color", "Above Water Fog Color",
      dtCore::ColorRgbaActorProperty::SetFuncType(actor, &OceanConfigActor::SetAboveWaterFogColor),
      dtCore::ColorRgbaActorProperty::GetFuncType(actor, &OceanConfigActor::GetAboveWaterFogColor),
      "color of fog",
      GROUPNAME));

   AddProperty(new dtCore::ColorRgbaActorProperty("Under Water Fog Color", "Under Water Fog Color",
      dtCore::ColorRgbaActorProperty::SetFuncType(actor, &OceanConfigActor::SetUnderWaterFogColor),
      dtCore::ColorRgbaActorProperty::GetFuncType(actor, &OceanConfigActor::GetUnderWaterFogColor),
      "color of fog under water",
      GROUPNAME));

   AddProperty(new dtCore::ColorRgbaActorProperty("Under Water Diffuse Color", "Under Water Diffuse Color",
      dtCore::ColorRgbaActorProperty::SetFuncType(actor, &OceanConfigActor::SetUnderWaterDiffuseColor),
      dtCore::ColorRgbaActorProperty::GetFuncType(actor, &OceanConfigActor::GetUnderWaterDiffuseColor),
      "color of fog under water",
      GROUPNAME));

   AddProperty(new dtCore::Vec3ActorProperty("Under Water Attentuation", "Under Water Attentuation",
      dtCore::Vec3ActorProperty::SetFuncType(actor, &OceanConfigActor::SetUnderWaterAttentuation),
      dtCore::Vec3ActorProperty::GetFuncType(actor, &OceanConfigActor::GetUnderWaterAttentuation),
      "Attentuation",
      GROUPNAME));

   AddProperty(new dtCore::FloatActorProperty("Glare Attentuation", "Glare Attentuation",
      dtCore::FloatActorProperty::SetFuncType(actor, &OceanConfigActor::SetGlareAttentuation),
      dtCore::FloatActorProperty::GetFuncType(actor, &OceanConfigActor::GetGlareAttentuation),
      "Controls the rate at which the glare drops off (typically 0.75..0.95)",
      GROUPNAME));

   AddProperty(new dtCore::ColorRgbaActorProperty("Sun Diffuse Color", "Sun Diffuse Color",
      dtCore::ColorRgbaActorProperty::SetFuncType(actor, &OceanConfigActor::SetSunDiffuseColor),
      dtCore::ColorRgbaActorProperty::GetFuncType(actor, &OceanConfigActor::GetSunDiffuseColor),
      "color of sun",
      GROUPNAME));

   AddProperty(new dtCore::Vec3ActorProperty("Sun Direction", "Sun Direction",
      dtCore::Vec3ActorProperty::SetFuncType(actor, &OceanConfigActor::SetSunDirection),
      dtCore::Vec3ActorProperty::GetFuncType(actor, &OceanConfigActor::GetSunDirection),
      "Attentuation",
      GROUPNAME));
}
