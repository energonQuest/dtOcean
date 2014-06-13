SET(LIB_NAME dtOcean)

SET(ocean_SRCS
  ${CMAKE_SOURCE_DIR}/src/actorregistry.cpp
  ${CMAKE_SOURCE_DIR}/src/cylinder.cpp
  ${CMAKE_SOURCE_DIR}/src/oceanactor.cpp
  ${CMAKE_SOURCE_DIR}/src/oceanclampactor.cpp
  ${CMAKE_SOURCE_DIR}/src/oceanconfigactor.cpp
  ${CMAKE_SOURCE_DIR}/src/skydome.cpp
  ${CMAKE_SOURCE_DIR}/src/spheresegment.cpp
)

SET(ocean_HDRS
  ${CMAKE_SOURCE_DIR}/include/dtOcean/actorregistry.h
  ${CMAKE_SOURCE_DIR}/include/dtOcean/cylinder.h  
  ${CMAKE_SOURCE_DIR}/include/dtOcean/export.h  
  ${CMAKE_SOURCE_DIR}/include/dtOcean/oceanactor.h  
  ${CMAKE_SOURCE_DIR}/include/dtOcean/oceanclampactor.h  
  ${CMAKE_SOURCE_DIR}/include/dtOcean/oceanconfigactor.h  
  ${CMAKE_SOURCE_DIR}/include/dtOcean/skydome.h  
  ${CMAKE_SOURCE_DIR}/include/dtOcean/spheresegment.h  
)

ADD_LIBRARY(${LIB_NAME} SHARED ${ocean_SRCS} ${ocean_HDRS})

SET_TARGET_PROPERTIES(${LIB_NAME} PROPERTIES DEFINE_SYMBOL DT_OCEAN_LIBRARY)
SET_TARGET_PROPERTIES(${LIB_NAME} 
                       PROPERTIES FRAMEWORK TRUE 
                       PUBLIC_HEADER "${ocean_HDRS}"
                       )

# little hack to get the .dll into /bin and .lib into /lib
IF (MSVC)
  # SET_TARGET_PROPERTIES(${LIB_NAME} PROPERTIES PREFIX "../../bin/")
  SET_TARGET_PROPERTIES(${LIB_NAME} PROPERTIES IMPORT_PREFIX "../../lib/")
ENDIF (MSVC)

TARGET_LINK_LIBRARIES(${LIB_NAME}
                      optimized ${DTUTIL_LIBRARY}      debug ${DTUTIL_DEBUG_LIBRARY}
                      # optimized ${DTDAL_LIBRARY}       debug ${DTDAL_DEBUG_LIBRARY}
                      optimized ${DTCORE_LIBRARY}      debug ${DTCORE_DEBUG_LIBRARY}
                      optimized ${DTABC_LIBRARY}       debug ${DTABC_DEBUG_LIBRARY}
                      optimized ${DTGAME_LIBRARY}      debug ${DTGAME_DEBUG_LIBRARY}
                      optimized ${DTACTORS_LIBRARY}    debug ${DTACTORS_DEBUG_LIBRARY}
                      #optimized ${DTQT_LIBRARY}        debug ${DTQT_DEBUG_LIBRARY}
                      optimized ${OPENTHREADS_LIBRARY} debug ${OPENTHREADS_LIBRARY_DEBUG}
                      optimized ${OSG_LIBRARY}         debug ${OSG_LIBRARY_DEBUG}
                      optimized ${OSGDB_LIBRARY}       debug ${OSGDB_LIBRARY_DEBUG}
                      optimized ${OSGUTIL_LIBRARY}     debug ${OSGUTIL_LIBRARY_DEBUG}
                      optimized ${OSGOCEAN_LIBRARY}  debug ${OSGOCEAN_LIBRARY_DEBUG}
)
								
IF (MSVC)
  SET(CMAKE_DEBUG_POSTFIX "d")
  SET_TARGET_PROPERTIES(${LIB_NAME} PROPERTIES DEBUG_POSTFIX "${CMAKE_DEBUG_POSTFIX}")
ENDIF (MSVC)

INSTALL(TARGETS ${LIB_NAME}
        RUNTIME DESTINATION bin
        LIBRARY DESTINATION lib
        ARCHIVE DESTINATION lib
        PUBLIC_HEADER DESTINATION ${CMAKE_INSTALL_PREFIX}/include/dtOcean
)

IF (MSVC)
  FILE(TO_CMAKE_PATH $ENV{DELTA_BUILD}../../bin/ path)
  GET_TARGET_PROPERTY(location ${LIB_NAME} DEBUG_LOCATION)
  GET_TARGET_PROPERTY(location_r ${LIB_NAME} RELEASE_LOCATION)
  ADD_CUSTOM_COMMAND(TARGET ${LIB_NAME}
                     POST_BUILD
                     COMMAND ${CMAKE_COMMAND} -E copy ${location} ${path}
                     COMMAND ${CMAKE_COMMAND} -E echo "Copying ${location} to ${path}")
  ADD_CUSTOM_COMMAND(TARGET ${LIB_NAME}
                     POST_BUILD
                     COMMAND ${CMAKE_COMMAND} -E copy ${location_r} ${path}
                     COMMAND ${CMAKE_COMMAND} -E echo "Copying ${location_r} to ${path}")
ENDIF (MSVC)
