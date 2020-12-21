cmake_minimum_required(VERSION 3.8)
project(webrtc)

set(CMAKE_SCRIPTS_DIR "cmake")
set(WEBRTC_SOURCE_DIR "src")
set(THIRD_PARTY_DIR "third_party")

include("${CMAKE_SCRIPTS_DIR}/third-party")
include("${CMAKE_SCRIPTS_DIR}/webrtc")

add_library(${PROJECT_NAME} STATIC)
target_link_libraries(${PROJECT_NAME}
    PUBLIC
        "absl::optional"
    PRIVATE
)