set(WEBRTC_CMAKE_DIR "webrtc-cmake")
set(WEBRTC_COMPONENT_PREFIX "webrtc_")

include("${WEBRTC_CMAKE_DIR}/api")
include("${WEBRTC_CMAKE_DIR}/audio")
include("${WEBRTC_CMAKE_DIR}/call")
include("${WEBRTC_CMAKE_DIR}/common_audio")
include("${WEBRTC_CMAKE_DIR}/common_video")
include("${WEBRTC_CMAKE_DIR}/media")
include("${WEBRTC_CMAKE_DIR}/modules")
include("${WEBRTC_CMAKE_DIR}/p2p")
include("${WEBRTC_CMAKE_DIR}/pc")
include("${WEBRTC_CMAKE_DIR}/rtc_base")
include("${WEBRTC_CMAKE_DIR}/video")

add_library(${PROJECT_NAME} STATIC "")
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
)