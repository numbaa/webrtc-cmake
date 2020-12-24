cmake_minimum_required(VERSION 3.8)
project(webrtc)

set(CMAKE_SCRIPTS_DIR "cmake")
set(WEBRTC_SOURCE_DIR "src")
message("WEBRTC_SOURCE_DIR:${WEBRTC_SOURCE_DIR}")
set(THIRD_PARTY_DIR "third_party")

include("${CMAKE_SCRIPTS_DIR}/third-party.cmake")
include("${CMAKE_SCRIPTS_DIR}/webrtc.cmake")

add_library(${PROJECT_NAME} STATIC "dummy.cpp")
target_link_libraries(${PROJECT_NAME} STATIC
    "webrtc::api"
    "webrtc::audio"
    "webrtc::call"
    "webrtc::common_audio"
    "webrtc::common_video"
    "webrtc::media"
    "webrtc::modules"
    "webrtc::p2p"
    "webrtc::pc"
    "webrtc::rtc_base"
    "webrtc::video"

    "absl::optional"
)
