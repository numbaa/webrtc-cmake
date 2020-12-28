cmake_minimum_required(VERSION 3.8)
project(webrtc)
set_property(GLOBAL PROPERTY USE_FOLDERS ON)

set(CMAKE_SCRIPTS_DIR "cmake")
set(WEBRTC_SOURCE_DIR "src")
set(THIRD_PARTY_DIR "third_party")

add_definitions(-DWEBRTC_WIN -DNOMINMAX)

include("${CMAKE_SCRIPTS_DIR}/third-party.cmake")
include("${CMAKE_SCRIPTS_DIR}/webrtc.cmake")

add_library(${PROJECT_NAME} SHARED "dummy.cpp")
add_library("${PROJECT_NAME}-static" STATIC "dummy.cpp")

target_include_directories(${PROJECT_NAME}
    PUBLIC
        ${WEBRTC_SOURCE_DIR}
)

target_include_directories("${PROJECT_NAME}-static"
    PUBLIC
        ${WEBRTC_SOURCE_DIR}
)

target_link_libraries("${PROJECT_NAME}-static"
    "absl::optional"
)

target_link_libraries(${PROJECT_NAME}
    PUBLIC
        "${PROJECT_NAME}-static"
)
