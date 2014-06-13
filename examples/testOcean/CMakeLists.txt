SET(LIB_NAME testOcean)

ADD_LIBRARY(${LIB_NAME} SHARED
            testentrypoint.cpp
            testexport.h
            readme.txt
)

SET_TARGET_PROPERTIES(${LIB_NAME}
                     PROPERTIES DEFINE_SYMBOL TEST_OCEAN_LIBRARY)

TARGET_LINK_LIBRARIES(${LIB_NAME}
                      optimized ${DTUTIL_LIBRARY}      debug ${DTUTIL_DEBUG_LIBRARY}
                      optimized ${DTCORE_LIBRARY}      debug ${DTCORE_DEBUG_LIBRARY}
                      optimized ${DTDAL_LIBRARY}       debug ${DTDAL_DEBUG_LIBRARY}
                      optimized ${DTABC_LIBRARY}       debug ${DTABC_DEBUG_LIBRARY}
                      optimized ${DTGAME_LIBRARY}      debug ${DTGAME_DEBUG_LIBRARY}
                      optimized ${DTACTORS_LIBRARY}    debug ${DTACTORS_DEBUG_LIBRARY}
                      optimized ${OPENTHREADS_LIBRARY} debug ${OPENTHREADS_LIBRARY_DEBUG}
                      optimized ${OSG_LIBRARY}         debug ${OSG_LIBRARY_DEBUG}
                      optimized ${OSGUTIL_LIBRARY}     debug ${OSGUTIL_LIBRARY_DEBUG}
                      dtOcean # optimized dtOcean                debug dtOceanD
)

IF (MSVC)
  SET(CMAKE_DEBUG_POSTFIX "d")
  SET_TARGET_PROPERTIES(${LIB_NAME} PROPERTIES DEBUG_POSTFIX "${CMAKE_DEBUG_POSTFIX}")
ENDIF (MSVC)

# little hack to get the .dll into /bin and .lib into /lib
IF (MSVC_IDE)
  SET_TARGET_PROPERTIES(${LIB_NAME} PROPERTIES PREFIX "../../../bin/")
  SET_TARGET_PROPERTIES(${LIB_NAME} PROPERTIES IMPORT_PREFIX "../../")
ENDIF (MSVC_IDE)
