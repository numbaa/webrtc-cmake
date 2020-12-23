set(WEBRTC_CMAKE_DIR "webrtc-cmake")
set(WEBRTC_COMPONENT_PREFIX "webrtc_")

include("${WEBRTC_CMAKE_DIR}/api.cmake")
include("${WEBRTC_CMAKE_DIR}/audio.cmake")
include("${WEBRTC_CMAKE_DIR}/call.cmake")
include("${WEBRTC_CMAKE_DIR}/common_audio.cmake")
include("${WEBRTC_CMAKE_DIR}/common_video.cmake")
include("${WEBRTC_CMAKE_DIR}/media.cmake")
include("${WEBRTC_CMAKE_DIR}/modules.cmake")
include("${WEBRTC_CMAKE_DIR}/p2p.cmake")
include("${WEBRTC_CMAKE_DIR}/pc.cmake")
include("${WEBRTC_CMAKE_DIR}/rtc_base.cmake")
include("${WEBRTC_CMAKE_DIR}/video.cmake")

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