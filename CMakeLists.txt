cmake_minimum_required(VERSION 3.8)
project(webrtc)

set_property(GLOBAL PROPERTY USE_FOLDERS ON)
add_definitions(-DWEBRTC_WIN -DNOMINMAX)

set(CMAKE_SCRIPTS_DIR "cmake")
set(WEBRTC_SOURCE_DIR "src")
set(THIRD_PARTY_DIR "third_party")

include("${CMAKE_SCRIPTS_DIR}/fetch-src.cmake")
include("${CMAKE_SCRIPTS_DIR}/third-party.cmake")
include("${CMAKE_SCRIPTS_DIR}/webrtc.cmake")

add_library(${PROJECT_NAME} SHARED "dummy.cpp")
add_library("${PROJECT_NAME}-static" STATIC "dummy.cpp")

target_include_directories(${PROJECT_NAME}
    PUBLIC
        ${WEBRTC_SOURCE_DIR}
)
add_dependencies(${PROJECT_NAME} webrtc-src)
add_dependencies("${PROJECT_NAME}-static" webrtc-src)

target_include_directories("${PROJECT_NAME}-static"
    PUBLIC
        ${WEBRTC_SOURCE_DIR}
)

#target_link_libraries("${PROJECT_NAME}-static"
#    "absl::optional"
#)
