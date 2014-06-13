# Install script for directory: C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/src/osgOcean

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "Release")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/lib/osgOceand.lib")
    IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/lib/Debug/osgOceand.lib")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/lib/osgOcean.lib")
    IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/lib/Release/osgOcean.lib")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/lib/osgOceans.lib")
    IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/lib/MinSizeRel/osgOceans.lib")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/lib/osgOceanrd.lib")
    IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/lib/RelWithDebInfo/osgOceanrd.lib")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/osgOceand.dll")
    IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin" TYPE SHARED_LIBRARY FILES "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/bin/Debug/osgOceand.dll")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/osgOcean.dll")
    IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin" TYPE SHARED_LIBRARY FILES "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/bin/Release/osgOcean.dll")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/osgOceans.dll")
    IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin" TYPE SHARED_LIBRARY FILES "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/bin/MinSizeRel/osgOceans.dll")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/osgOceanrd.dll")
    IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin" TYPE SHARED_LIBRARY FILES "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/bin/RelWithDebInfo/osgOceanrd.dll")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/include/osgOcean/Cylinder;C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/include/osgOcean/DistortionSurface;C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/include/osgOcean/FFTOceanTechnique;C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/include/osgOcean/FFTOceanSurface;C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/include/osgOcean/FFTOceanSurfaceVBO;C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/include/osgOcean/FFTSimulation;C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/include/osgOcean/GodRays;C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/include/osgOcean/GodRayBlendSurface;C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/include/osgOcean/MipmapGeometry;C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/include/osgOcean/MipmapGeometryVBO;C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/include/osgOcean/OceanScene;C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/include/osgOcean/OceanTechnique;C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/include/osgOcean/OceanTile;C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/include/osgOcean/RandUtils;C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/include/osgOcean/ScreenAlignedQuad;C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/include/osgOcean/ShaderManager;C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/include/osgOcean/SiltEffect;C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/include/osgOcean/WaterTrochoids;C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/include/osgOcean/Export;C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/include/osgOcean/Version")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/include/osgOcean" TYPE FILE FILES
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/include/osgOcean/Cylinder"
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/include/osgOcean/DistortionSurface"
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/include/osgOcean/FFTOceanTechnique"
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/include/osgOcean/FFTOceanSurface"
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/include/osgOcean/FFTOceanSurfaceVBO"
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/include/osgOcean/FFTSimulation"
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/include/osgOcean/GodRays"
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/include/osgOcean/GodRayBlendSurface"
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/include/osgOcean/MipmapGeometry"
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/include/osgOcean/MipmapGeometryVBO"
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/include/osgOcean/OceanScene"
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/include/osgOcean/OceanTechnique"
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/include/osgOcean/OceanTile"
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/include/osgOcean/RandUtils"
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/include/osgOcean/ScreenAlignedQuad"
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/include/osgOcean/ShaderManager"
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/include/osgOcean/SiltEffect"
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/include/osgOcean/WaterTrochoids"
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/include/osgOcean/Export"
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/include/osgOcean/Version"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/resources/shaders/osgOcean_ocean_surface.frag;C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/resources/shaders/osgOcean_ocean_surface.vert;C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/resources/shaders/osgOcean_ocean_surface_vbo.vert;C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/resources/shaders/osgOcean_godrays.vert;C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/resources/shaders/osgOcean_godrays.frag;C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/resources/shaders/osgOcean_godray_screen_blend.vert;C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/resources/shaders/osgOcean_godray_screen_blend.frag;C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/resources/shaders/osgOcean_godray_glare.vert;C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/resources/shaders/osgOcean_godray_glare.frag;C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/resources/shaders/osgOcean_silt_quads.vert;C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/resources/shaders/osgOcean_silt_quads.frag;C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/resources/shaders/osgOcean_silt_points.vert;C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/resources/shaders/osgOcean_silt_points.frag;C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/resources/shaders/osgOcean_streak.vert;C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/resources/shaders/osgOcean_streak.frag;C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/resources/shaders/osgOcean_glare_composite.vert;C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/resources/shaders/osgOcean_glare_composite.frag;C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/resources/shaders/osgOcean_downsample_glare.frag;C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/resources/shaders/osgOcean_downsample.vert;C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/resources/shaders/osgOcean_downsample.frag;C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/resources/shaders/osgOcean_gaussian.vert;C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/resources/shaders/osgOcean_gaussian1.frag;C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/resources/shaders/osgOcean_gaussian2.frag;C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/resources/shaders/osgOcean_dof_combiner.vert;C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/resources/shaders/osgOcean_dof_combiner.frag;C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/resources/shaders/osgOcean_water_distortion.vert;C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/resources/shaders/osgOcean_water_distortion.frag;C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/resources/shaders/osgOcean_ocean_scene.vert;C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/resources/shaders/osgOcean_ocean_scene.frag;C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/resources/shaders/osgOcean_ocean_scene_lispsm.vert;C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/resources/shaders/osgOcean_ocean_scene_lispsm.frag;C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/resources/shaders/osgOcean_heightmap.vert;C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/resources/shaders/osgOcean_heightmap.frag")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/resources/shaders" TYPE FILE FILES
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/resources/shaders/osgOcean_ocean_surface.frag"
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/resources/shaders/osgOcean_ocean_surface.vert"
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/resources/shaders/osgOcean_ocean_surface_vbo.vert"
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/resources/shaders/osgOcean_godrays.vert"
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/resources/shaders/osgOcean_godrays.frag"
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/resources/shaders/osgOcean_godray_screen_blend.vert"
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/resources/shaders/osgOcean_godray_screen_blend.frag"
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/resources/shaders/osgOcean_godray_glare.vert"
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/resources/shaders/osgOcean_godray_glare.frag"
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/resources/shaders/osgOcean_silt_quads.vert"
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/resources/shaders/osgOcean_silt_quads.frag"
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/resources/shaders/osgOcean_silt_points.vert"
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/resources/shaders/osgOcean_silt_points.frag"
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/resources/shaders/osgOcean_streak.vert"
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/resources/shaders/osgOcean_streak.frag"
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/resources/shaders/osgOcean_glare_composite.vert"
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/resources/shaders/osgOcean_glare_composite.frag"
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/resources/shaders/osgOcean_downsample_glare.frag"
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/resources/shaders/osgOcean_downsample.vert"
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/resources/shaders/osgOcean_downsample.frag"
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/resources/shaders/osgOcean_gaussian.vert"
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/resources/shaders/osgOcean_gaussian1.frag"
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/resources/shaders/osgOcean_gaussian2.frag"
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/resources/shaders/osgOcean_dof_combiner.vert"
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/resources/shaders/osgOcean_dof_combiner.frag"
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/resources/shaders/osgOcean_water_distortion.vert"
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/resources/shaders/osgOcean_water_distortion.frag"
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/resources/shaders/osgOcean_ocean_scene.vert"
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/resources/shaders/osgOcean_ocean_scene.frag"
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/resources/shaders/osgOcean_ocean_scene_lispsm.vert"
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/resources/shaders/osgOcean_ocean_scene_lispsm.frag"
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/resources/shaders/osgOcean_heightmap.vert"
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/resources/shaders/osgOcean_heightmap.frag"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/resources/textures/sea_foam.png;C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/resources/textures/sun_glare.png")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/resources/textures" TYPE FILE FILES
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/resources/textures/sea_foam.png"
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/resources/textures/sun_glare.png"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

