cmake_minimum_required(VERSION 3.8)
project(webrtc)

set_property(GLOBAL PROPERTY USE_FOLDERS ON)

set(CMAKE_SCRIPTS_DIR "cmake")
set(WEBRTC_SOURCE_DIR "src")
set(THIRD_PARTY_DIR "third_party")

include("${CMAKE_SCRIPTS_DIR}/third-party.cmake")
include("${CMAKE_SCRIPTS_DIR}/webrtc.cmake")

add_library(${PROJECT_NAME} SHARED "dummy.cpp")
add_library("${PROJECT_NAME}-static" STATIC "dummy.cpp")

target_link_libraries("${PROJECT_NAME}-static"
    "absl::optional"
)

target_link_libraries(${PROJECT_NAME}
    PUBLIC
        "${PROJECT_NAME}-static"
)
