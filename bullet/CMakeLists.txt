cmake_minimum_required(VERSION 2.4)

PROJECT(BULLET_PHYSICS)
SET(BULLET_VERSION 2.75)

IF (NOT CMAKE_BUILD_TYPE)
# SET(CMAKE_BUILD_TYPE "Debug")
 SET(CMAKE_BUILD_TYPE "Release")
ENDIF (NOT CMAKE_BUILD_TYPE) 

   
IF(COMMAND cmake_policy)
   cmake_policy(SET CMP0003 NEW)
ENDIF(COMMAND cmake_policy)
   

include_directories(${PROJECT_SOURCE_DIR}/bullet/src)
SUBDIRS(bullet/src/BulletCollision bullet/src/BulletDynamics bullet/src/LinearMath )

if (OGREKIT_COMPILE_SOFTBODY)
	SUBDIRS(bullet/src/BulletSoftBody)
endif()
