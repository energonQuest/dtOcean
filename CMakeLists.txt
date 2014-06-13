PROJECT(dtOcean)

CMAKE_MINIMUM_REQUIRED(VERSION 2.6.1)

IF(COMMAND cmake_policy)
  CMAKE_POLICY(SET CMP0003 NEW)
ENDIF(COMMAND cmake_policy)

ADD_DEFINITIONS(-DSIGSLOT_PURE_ISO -DdSINGLE)
IF(MSVC)
  ADD_DEFINITIONS(-wd4290 -DNOMINMAX)
ENDIF(MSVC)

SET(CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake")
INCLUDE(UtilityMacros)



SET(USE_OSG_DB       1)
SET(USE_OSG_GA       1)
SET(USE_OSG_PARTICLE 0)
SET(USE_OSG_SHADOW   01)
SET(USE_OSG_SIM      0)
SET(USE_OSG_TEXT     0)
SET(USE_OSG_UTIL     1)
SET(USE_OSG_VIEWER   0)

FIND_PACKAGE(OpenThreads REQUIRED)
FIND_PACKAGE(OSG REQUIRED)
FIND_PACKAGE(Delta3D REQUIRED)
FIND_PACKAGE(OSGOCEAN REQUIRED)
FIND_PACKAGE(ODE REQUIRED)
#FIND_PACKAGE(FFTSS REQUIRED)
LINK_DIRECTORIES(${DELTA3D_LIB_DIR})
INCLUDE_DIRECTORIES(
  ${DELTA3D_INCLUDE_DIR}
  ${DELTA3D_EXT_DIR}/inc
  ${OSG_INCLUDE_DIR}
  ${ODE_INCLUDE_DIR}
  ${OSGOCEAN_INCLUDE_DIR}
  #${FFTSS_INCLUDE_DIR}
  ${CMAKE_SOURCE_DIR}/dtOcean/include  
  ${CMAKE_SOURCE_DIR}/include 
  ${CMAKE_SOURCE_DIR}/source/dtOcean/include
)

################################################################################
# Now add subdirectories for the library itself and for examples
################################################################################

ADD_SUBDIRECTORY(src)
ADD_SUBDIRECTORY(examples)

################################################################################
# User options
################################################################################

OPTION(BUILD_EXAMPLES "Enables the building of the dtOcean example project(s)" ON)
