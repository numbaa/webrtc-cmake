set(WEBRTC_VIDEO_DIR "${WEBRTC_SOURCE_DIR}/video")
set(WEBRTC_VIDEO_IDE_FOLDER "webrtc/video")

add_library("${WEBRTC_COMPONENT_PREFIX}video" OBJECT
    "${WEBRTC_VIDEO_DIR}/buffered_frame_decryptor.cc"
    "${WEBRTC_VIDEO_DIR}/buffered_frame_decryptor.h"
    "${WEBRTC_VIDEO_DIR}/call_stats.cc"
    "${WEBRTC_VIDEO_DIR}/call_stats.h"
    "${WEBRTC_VIDEO_DIR}/call_stats2.cc"
    "${WEBRTC_VIDEO_DIR}/call_stats2.h"
    "${WEBRTC_VIDEO_DIR}/encoder_rtcp_feedback.cc"
    "${WEBRTC_VIDEO_DIR}/encoder_rtcp_feedback.h"
    "${WEBRTC_VIDEO_DIR}/quality_limitation_reason_tracker.cc"
    "${WEBRTC_VIDEO_DIR}/quality_limitation_reason_tracker.h"
    "${WEBRTC_VIDEO_DIR}/quality_threshold.cc"
    "${WEBRTC_VIDEO_DIR}/quality_threshold.h"
    "${WEBRTC_VIDEO_DIR}/receive_statistics_proxy.cc"
    "${WEBRTC_VIDEO_DIR}/receive_statistics_proxy.h"
    "${WEBRTC_VIDEO_DIR}/receive_statistics_proxy2.cc"
    "${WEBRTC_VIDEO_DIR}/receive_statistics_proxy2.h"
    "${WEBRTC_VIDEO_DIR}/report_block_stats.cc"
    "${WEBRTC_VIDEO_DIR}/report_block_stats.h"
    "${WEBRTC_VIDEO_DIR}/rtp_streams_synchronizer.cc"
    "${WEBRTC_VIDEO_DIR}/rtp_streams_synchronizer.h"
    "${WEBRTC_VIDEO_DIR}/rtp_streams_synchronizer2.cc"
    "${WEBRTC_VIDEO_DIR}/rtp_streams_synchronizer2.h"
    "${WEBRTC_VIDEO_DIR}/rtp_video_stream_receiver.cc"
    "${WEBRTC_VIDEO_DIR}/rtp_video_stream_receiver.h"
    "${WEBRTC_VIDEO_DIR}/rtp_video_stream_receiver2.cc"
    "${WEBRTC_VIDEO_DIR}/rtp_video_stream_receiver2.h"
    "${WEBRTC_VIDEO_DIR}/rtp_video_stream_receiver_frame_transformer_delegate.cc"
    "${WEBRTC_VIDEO_DIR}/rtp_video_stream_receiver_frame_transformer_delegate.h"
    "${WEBRTC_VIDEO_DIR}/send_delay_stats.cc"
    "${WEBRTC_VIDEO_DIR}/send_delay_stats.h"
    "${WEBRTC_VIDEO_DIR}/send_statistics_proxy.cc"
    "${WEBRTC_VIDEO_DIR}/send_statistics_proxy.h"
    "${WEBRTC_VIDEO_DIR}/stats_counter.cc"
    "${WEBRTC_VIDEO_DIR}/stats_counter.h"
    "${WEBRTC_VIDEO_DIR}/stream_synchronization.cc"
    "${WEBRTC_VIDEO_DIR}/stream_synchronization.h"
    "${WEBRTC_VIDEO_DIR}/transport_adapter.cc"
    "${WEBRTC_VIDEO_DIR}/transport_adapter.h"
    "${WEBRTC_VIDEO_DIR}/video_quality_observer.cc"
    "${WEBRTC_VIDEO_DIR}/video_quality_observer.h"
    "${WEBRTC_VIDEO_DIR}/video_quality_observer2.cc"
    "${WEBRTC_VIDEO_DIR}/video_quality_observer2.h"
    "${WEBRTC_VIDEO_DIR}/video_receive_stream.cc"
    "${WEBRTC_VIDEO_DIR}/video_receive_stream.h"
    "${WEBRTC_VIDEO_DIR}/video_receive_stream2.cc"
    "${WEBRTC_VIDEO_DIR}/video_receive_stream2.h"
    "${WEBRTC_VIDEO_DIR}/video_send_stream.cc"
    "${WEBRTC_VIDEO_DIR}/video_send_stream.h"
    "${WEBRTC_VIDEO_DIR}/video_send_stream_impl.cc"
    "${WEBRTC_VIDEO_DIR}/video_send_stream_impl.h"
    "${WEBRTC_VIDEO_DIR}/video_stream_decoder.cc"
    "${WEBRTC_VIDEO_DIR}/video_stream_decoder.h"
    "${WEBRTC_VIDEO_DIR}/video_stream_decoder2.cc"
    "${WEBRTC_VIDEO_DIR}/video_stream_decoder2.h"
    #frame_dumping_decoder
    "${WEBRTC_VIDEO_DIR}/frame_dumping_decoder.cc"
    "${WEBRTC_VIDEO_DIR}/frame_dumping_decoder.h"
)
set_target_properties("${WEBRTC_COMPONENT_PREFIX}video" PROPERTIES FOLDER ${WEBRTC_VIDEO_IDE_FOLDER})


#api/video_stream_encoder_create depend on this
add_library("${WEBRTC_COMPONENT_PREFIX}video_stream_encoder_impl" OBJECT
    "${WEBRTC_VIDEO_DIR}/alignment_adjuster.cc"
    "${WEBRTC_VIDEO_DIR}/alignment_adjuster.h"
    "${WEBRTC_VIDEO_DIR}/encoder_bitrate_adjuster.cc"
    "${WEBRTC_VIDEO_DIR}/encoder_bitrate_adjuster.h"
    "${WEBRTC_VIDEO_DIR}/encoder_overshoot_detector.cc"
    "${WEBRTC_VIDEO_DIR}/encoder_overshoot_detector.h"
    "${WEBRTC_VIDEO_DIR}/frame_encode_metadata_writer.cc"
    "${WEBRTC_VIDEO_DIR}/frame_encode_metadata_writer.h"
    "${WEBRTC_VIDEO_DIR}/video_source_sink_controller.cc"
    "${WEBRTC_VIDEO_DIR}/video_source_sink_controller.h"
    "${WEBRTC_VIDEO_DIR}/video_stream_encoder.cc"
    "${WEBRTC_VIDEO_DIR}/video_stream_encoder.h"
)
set_target_properties("${WEBRTC_COMPONENT_PREFIX}video_stream_encoder_impl" PROPERTIES FOLDER ${WEBRTC_VIDEO_IDE_FOLDER})


#add_library(webrtc::video ALIAS "${WEBRTC_COMPONENT_PREFIX}video")