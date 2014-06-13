# Install script for directory: C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/src/oceanExample

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
     "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/oceanExample.exe")
    IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin" TYPE EXECUTABLE FILES "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/bin/Debug/oceanExample.exe")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/oceanExample.exe")
    IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin" TYPE EXECUTABLE FILES "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/bin/Release/oceanExample.exe")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/oceanExample.exe")
    IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin" TYPE EXECUTABLE FILES "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/bin/MinSizeRel/oceanExample.exe")
  ELSEIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/oceanExample.exe")
    IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin" TYPE EXECUTABLE FILES "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/bin/RelWithDebInfo/oceanExample.exe")
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/resources/textures/sky_clear/down.png;C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/resources/textures/sky_clear/east.png;C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/resources/textures/sky_clear/north.png;C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/resources/textures/sky_clear/south.png;C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/resources/textures/sky_clear/up.png;C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/resources/textures/sky_clear/west.png")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/resources/textures/sky_clear" TYPE FILE FILES
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/resources/textures/sky_clear/down.png"
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/resources/textures/sky_clear/east.png"
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/resources/textures/sky_clear/north.png"
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/resources/textures/sky_clear/south.png"
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/resources/textures/sky_clear/up.png"
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/resources/textures/sky_clear/west.png"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/resources/textures/sky_dusk/down.png;C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/resources/textures/sky_dusk/east.png;C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/resources/textures/sky_dusk/north.png;C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/resources/textures/sky_dusk/south.png;C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/resources/textures/sky_dusk/up.png;C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/resources/textures/sky_dusk/west.png")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/resources/textures/sky_dusk" TYPE FILE FILES
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/resources/textures/sky_dusk/down.png"
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/resources/textures/sky_dusk/east.png"
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/resources/textures/sky_dusk/north.png"
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/resources/textures/sky_dusk/south.png"
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/resources/textures/sky_dusk/up.png"
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/resources/textures/sky_dusk/west.png"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/resources/textures/sky_fair_cloudy/down.png;C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/resources/textures/sky_fair_cloudy/east.png;C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/resources/textures/sky_fair_cloudy/north.png;C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/resources/textures/sky_fair_cloudy/south.png;C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/resources/textures/sky_fair_cloudy/up.png;C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/resources/textures/sky_fair_cloudy/west.png")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/resources/textures/sky_fair_cloudy" TYPE FILE FILES
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/resources/textures/sky_fair_cloudy/down.png"
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/resources/textures/sky_fair_cloudy/east.png"
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/resources/textures/sky_fair_cloudy/north.png"
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/resources/textures/sky_fair_cloudy/south.png"
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/resources/textures/sky_fair_cloudy/up.png"
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/resources/textures/sky_fair_cloudy/west.png"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/resources/shaders/terrain.vert;C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/resources/shaders/terrain.frag;C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/resources/shaders/terrain_lispsm.vert;C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/resources/shaders/terrain_lispsm.frag;C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/resources/shaders/skydome.vert;C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/resources/shaders/skydome.frag")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/resources/shaders" TYPE FILE FILES
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/resources/shaders/terrain.vert"
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/resources/shaders/terrain.frag"
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/resources/shaders/terrain_lispsm.vert"
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/resources/shaders/terrain_lispsm.frag"
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/resources/shaders/skydome.vert"
    "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/resources/shaders/skydome.frag"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/resources/island/islands.ive")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/resources/island" TYPE FILE FILES "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/resources/island/islands.ive")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/resources/boat/boat.3ds")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/build_vs2010x86/install_deploy/bin/resources/boat" TYPE FILE FILES "C:/jhuapl/dtOceanProto/3rdParty/src/dtOcean/ext/src/osgOcean-rev_256/resources/boat/boat.3ds")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

