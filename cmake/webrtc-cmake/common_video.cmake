set(WEBRTC_COMMON_VIDEO_DIR "${WEBRTC_SOURCE_DIR}/common_video")
set(WEBRTC_COMMON_VIDEO_IDE_FOLDER "src/common_video")

add_webrtc_object("common_video" ${WEBRTC_COMMON_VIDEO_IDE_FOLDER}
    "${WEBRTC_COMMON_VIDEO_DIR}/bitrate_adjuster.cc"
    "${WEBRTC_COMMON_VIDEO_DIR}/frame_rate_estimator.cc"
    "${WEBRTC_COMMON_VIDEO_DIR}/frame_rate_estimator.h"
    "${WEBRTC_COMMON_VIDEO_DIR}/h264/h264_bitstream_parser.cc"
    "${WEBRTC_COMMON_VIDEO_DIR}/h264/h264_bitstream_parser.h"
    "${WEBRTC_COMMON_VIDEO_DIR}/h264/h264_common.cc"
    "${WEBRTC_COMMON_VIDEO_DIR}/h264/h264_common.h"
    "${WEBRTC_COMMON_VIDEO_DIR}/h264/pps_parser.cc"
    "${WEBRTC_COMMON_VIDEO_DIR}/h264/pps_parser.h"
    "${WEBRTC_COMMON_VIDEO_DIR}/h264/profile_level_id.h"
    "${WEBRTC_COMMON_VIDEO_DIR}/h264/sps_parser.cc"
    "${WEBRTC_COMMON_VIDEO_DIR}/h264/sps_parser.h"
    "${WEBRTC_COMMON_VIDEO_DIR}/h264/sps_vui_rewriter.cc"
    "${WEBRTC_COMMON_VIDEO_DIR}/h264/sps_vui_rewriter.h"
    "${WEBRTC_COMMON_VIDEO_DIR}/include/bitrate_adjuster.h"
    "${WEBRTC_COMMON_VIDEO_DIR}/include/incoming_video_stream.h"
    "${WEBRTC_COMMON_VIDEO_DIR}/include/quality_limitation_reason.h"
    "${WEBRTC_COMMON_VIDEO_DIR}/include/video_frame_buffer.h"
    "${WEBRTC_COMMON_VIDEO_DIR}/include/video_frame_buffer_pool.h"
    "${WEBRTC_COMMON_VIDEO_DIR}/incoming_video_stream.cc"
    "${WEBRTC_COMMON_VIDEO_DIR}/libyuv/include/webrtc_libyuv.h"
    "${WEBRTC_COMMON_VIDEO_DIR}/libyuv/webrtc_libyuv.cc"
    "${WEBRTC_COMMON_VIDEO_DIR}/video_frame_buffer.cc"
    "${WEBRTC_COMMON_VIDEO_DIR}/video_frame_buffer_pool.cc"
    "${WEBRTC_COMMON_VIDEO_DIR}/video_render_frames.cc"
    "${WEBRTC_COMMON_VIDEO_DIR}/video_render_frames.h"
)
target_link_libraries("common_video"
    PRIVATE
        absl::optional
        yuv
)

#add_library(webrtc::common_video ALIAS "${WEBRTC_COMPONENT_PREFIX}common_video")