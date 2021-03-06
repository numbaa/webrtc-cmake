set(WEBRTC_CMAKE_DIR "${CMAKE_SCRIPTS_DIR}/webrtc-cmake")
set(WEBRTC_COMPONENT_PREFIX "webrtc_")

include_directories("src")

function(add_webrtc_object object_name ide_folder)
add_library(${object_name} OBJECT ${ARGN})
set_target_properties(${object_name} PROPERTIES FOLDER ${ide_folder})
target_compile_definitions(${object_name} PRIVATE
    WIN32_LEAN_AND_MEAN
    HAVE_WEBRTC_VIDEO
)
endfunction(add_webrtc_object)

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
include("${WEBRTC_CMAKE_DIR}/system-wrappers.cmake")
