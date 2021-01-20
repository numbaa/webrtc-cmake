
set(WEBRTC_API_DIR "${WEBRTC_SOURCE_DIR}/api")
set(WEBRTC_API_IDE_FOLDER "webrtc/api")



add_webrtc_object("create_peerconnection_factory" ${WEBRTC_API_IDE_FOLDER}
    "${WEBRTC_API_DIR}/create_peerconnection_factory.cc"
    "${WEBRTC_API_DIR}/create_peerconnection_factory.h"
)
target_link_libraries("create_peerconnection_factory"
    PRIVATE
        "libjingle_peerconnection_api"
        "absl::optional"
)

add_webrtc_object("libjingle_peerconnection_api" ${WEBRTC_API_IDE_FOLDER}
    "${WEBRTC_API_DIR}/candidate.cc"
    "${WEBRTC_API_DIR}/candidate.h"
    "${WEBRTC_API_DIR}/crypto_params.h"
    "${WEBRTC_API_DIR}/data_channel_interface.cc"
    "${WEBRTC_API_DIR}/data_channel_interface.h"
    "${WEBRTC_API_DIR}/dtls_transport_interface.cc"
    "${WEBRTC_API_DIR}/dtls_transport_interface.h"
    "${WEBRTC_API_DIR}/dtmf_sender_interface.h"
    "${WEBRTC_API_DIR}/ice_transport_interface.h"
    "${WEBRTC_API_DIR}/jsep.cc"
    "${WEBRTC_API_DIR}/jsep.h"
    "${WEBRTC_API_DIR}/jsep_ice_candidate.cc"
    "${WEBRTC_API_DIR}/jsep_ice_candidate.h"
    "${WEBRTC_API_DIR}/jsep_session_description.h"
    "${WEBRTC_API_DIR}/media_stream_proxy.h"
    "${WEBRTC_API_DIR}/media_stream_track_proxy.h"
    "${WEBRTC_API_DIR}/peer_connection_factory_proxy.h"
    "${WEBRTC_API_DIR}/peer_connection_interface.cc"
    "${WEBRTC_API_DIR}/peer_connection_interface.h"
    "${WEBRTC_API_DIR}/peer_connection_proxy.h"
    "${WEBRTC_API_DIR}/proxy.cc"
    "${WEBRTC_API_DIR}/proxy.h"
    "${WEBRTC_API_DIR}/rtp_receiver_interface.cc"
    "${WEBRTC_API_DIR}/rtp_receiver_interface.h"
    "${WEBRTC_API_DIR}/rtp_sender_interface.cc"
    "${WEBRTC_API_DIR}/rtp_sender_interface.h"
    "${WEBRTC_API_DIR}/rtp_transceiver_interface.cc"
    "${WEBRTC_API_DIR}/rtp_transceiver_interface.h"
    "${WEBRTC_API_DIR}/sctp_transport_interface.cc"
    "${WEBRTC_API_DIR}/sctp_transport_interface.h"
    "${WEBRTC_API_DIR}/set_local_description_observer_interface.h"
    "${WEBRTC_API_DIR}/set_remote_description_observer_interface.h"
    "${WEBRTC_API_DIR}/stats_types.cc"
    "${WEBRTC_API_DIR}/stats_types.h"
    "${WEBRTC_API_DIR}/turn_customizer.h"
    "${WEBRTC_API_DIR}/uma_metrics.h"
    "${WEBRTC_API_DIR}/video_track_source_proxy.h"
)
target_link_libraries("libjingle_peerconnection_api"
    PRIVATE
        "absl::optional"
)

add_webrtc_object("rtc_error" ${WEBRTC_API_IDE_FOLDER}
    "${WEBRTC_API_DIR}/rtc_error.cc"
    "${WEBRTC_API_DIR}/rtc_error.h"
)
target_link_libraries("rtc_error"
    absl::optional
)

add_webrtc_object("transport_api" ${WEBRTC_API_IDE_FOLDER}
    "${WEBRTC_API_DIR}/call/transport.cc"
    "${WEBRTC_API_DIR}/call/transport.h"
)

add_webrtc_object("crypto" ${WEBRTC_API_IDE_FOLDER}
    "${WEBRTC_API_DIR}/crypto/crypto_options.cc"
    "${WEBRTC_API_DIR}/crypto/crypto_options.h"
    "${WEBRTC_API_DIR}/crypto/frame_encryptor_interface.h"
    "${WEBRTC_API_DIR}/crypto/frame_decryptor_interface.h"
)
target_link_libraries("crypto"
    absl::optional
)

add_webrtc_object("rtc_event_log_factory" ${WEBRTC_API_IDE_FOLDER}
    "${WEBRTC_API_DIR}/rtc_event_log/rtc_event.cc"
    "${WEBRTC_API_DIR}/rtc_event_log/rtc_event.h"
    "${WEBRTC_API_DIR}/rtc_event_log/rtc_event_log.cc"
    "${WEBRTC_API_DIR}/rtc_event_log/rtc_event_log.h"
    "${WEBRTC_API_DIR}/rtc_event_log/rtc_event_log_factory_interface.h"
    "${WEBRTC_API_DIR}/rtc_event_log/rtc_event_log_factory.cc"
    "${WEBRTC_API_DIR}/rtc_event_log/rtc_event_log_factory.h"
)
target_link_libraries("rtc_event_log_factory"
    absl::optional
)

add_webrtc_object("field_tral_base_config" ${WEBRTC_API_IDE_FOLDER}
    "${WEBRTC_API_DIR}/transport/field_trial_based_config.cc"
    "${WEBRTC_API_DIR}/transport/field_trial_based_config.h"
)

target_include_directories("field_tral_base_config"
    PUBLIC
        "${WEBRTC_API_DIR}/transport"
)
target_link_libraries("field_tral_base_config"
    absl::optional
)

add_webrtc_object("task_queue" ${WEBRTC_API_IDE_FOLDER}
    "${WEBRTC_API_DIR}/task_queue/queued_task.h"
    "${WEBRTC_API_DIR}/task_queue/task_queue_base.h"
    "${WEBRTC_API_DIR}/task_queue/task_queue_factory.h"
    "${WEBRTC_API_DIR}/task_queue/task_queue_base.cc"
)
target_link_libraries("task_queue"
    absl::optional
)

add_webrtc_object("default_task_queue_factory" ${WEBRTC_API_IDE_FOLDER}
    "${WEBRTC_API_DIR}/task_queue/default_task_queue_factory.h"
    "${WEBRTC_API_DIR}/task_queue/default_task_queue_factory_stdlib.cc"
)
target_link_libraries("default_task_queue_factory"
    absl::optional
)

add_webrtc_object("rtp_parameters" ${WEBRTC_API_IDE_FOLDER}
    "${WEBRTC_API_DIR}/media_types.cc"
    "${WEBRTC_API_DIR}/media_types.h"
    "${WEBRTC_API_DIR}/rtp_parameters.cc"
    "${WEBRTC_API_DIR}/rtp_parameters.h"
)
target_link_libraries("rtp_parameters"
    absl::optional
)

add_webrtc_object("stun_types" ${WEBRTC_API_IDE_FOLDER}
    "${WEBRTC_API_DIR}/transport/stun.h"
    "${WEBRTC_API_DIR}/transport/stun.cc"
)
target_link_libraries("stun_types"
    absl::strings
)

add_webrtc_object("video_codecs_api" ${WEBRTC_API_IDE_FOLDER}
    "${WEBRTC_API_DIR}/video_codecs/sdp_video_format.cc"
    "${WEBRTC_API_DIR}/video_codecs/sdp_video_format.h"
    "${WEBRTC_API_DIR}/video_codecs/spatial_layer.cc"
    "${WEBRTC_API_DIR}/video_codecs/spatial_layer.h"
    "${WEBRTC_API_DIR}/video_codecs/video_codec.cc"
    "${WEBRTC_API_DIR}/video_codecs/video_codec.h"
    "${WEBRTC_API_DIR}/video_codecs/video_decoder.cc"
    "${WEBRTC_API_DIR}/video_codecs/video_decoder.h"
    "${WEBRTC_API_DIR}/video_codecs/video_decoder_factory.cc"
    "${WEBRTC_API_DIR}/video_codecs/video_decoder_factory.h"
    "${WEBRTC_API_DIR}/video_codecs/video_encoder.cc"
    "${WEBRTC_API_DIR}/video_codecs/video_encoder.h"
    "${WEBRTC_API_DIR}/video_codecs/video_encoder_config.cc"
    "${WEBRTC_API_DIR}/video_codecs/video_encoder_config.h"
    "${WEBRTC_API_DIR}/video_codecs/video_encoder_factory.h"
    "${WEBRTC_API_DIR}/video_codecs/vp8_frame_buffer_controller.h"
    "${WEBRTC_API_DIR}/video_codecs/vp8_frame_config.cc"
    "${WEBRTC_API_DIR}/video_codecs/vp8_frame_config.h"
    "${WEBRTC_API_DIR}/video_codecs/vp8_temporal_layers.cc"
    "${WEBRTC_API_DIR}/video_codecs/vp8_temporal_layers.h"
)
target_link_libraries("video_codecs_api"
    absl::optional
)

add_webrtc_object("api_video" ${WEBRTC_API_IDE_FOLDER}
    #video_rtp_headers
    "${WEBRTC_API_DIR}/video/color_space.cc"
    "${WEBRTC_API_DIR}/video/color_space.h"
    "${WEBRTC_API_DIR}/video/hdr_metadata.cc"
    "${WEBRTC_API_DIR}/video/hdr_metadata.h"
    "${WEBRTC_API_DIR}/video/video_content_type.cc"
    "${WEBRTC_API_DIR}/video/video_content_type.h"
    "${WEBRTC_API_DIR}/video/video_rotation.h"
    "${WEBRTC_API_DIR}/video/video_timing.cc"
    "${WEBRTC_API_DIR}/video/video_timing.h"
    #video_frame
    "${WEBRTC_API_DIR}/video/i420_buffer.cc"
    "${WEBRTC_API_DIR}/video/i420_buffer.h"
    "${WEBRTC_API_DIR}/video/video_codec_type.h"
    "${WEBRTC_API_DIR}/video/video_frame.cc"
    "${WEBRTC_API_DIR}/video/video_frame.h"
    "${WEBRTC_API_DIR}/video/video_frame_buffer.cc"
    "${WEBRTC_API_DIR}/video/video_frame_buffer.h"
    "${WEBRTC_API_DIR}/video/video_sink_interface.h"
    "${WEBRTC_API_DIR}/video/video_source_interface.cc"
    "${WEBRTC_API_DIR}/video/video_source_interface.h"
    #video_frame_i010
    "${WEBRTC_API_DIR}/video/i010_buffer.cc"
    "${WEBRTC_API_DIR}/video/i010_buffer.h"
    #video_frame_nv12
    "${WEBRTC_API_DIR}/video/nv12_buffer.cc"
    "${WEBRTC_API_DIR}/video/nv12_buffer.h"
    #encoded_image
    "${WEBRTC_API_DIR}/video/encoded_image.cc"
    "${WEBRTC_API_DIR}/video/encoded_image.h"
    #encoded_frame
    "${WEBRTC_API_DIR}/video/encoded_frame.cc"
    "${WEBRTC_API_DIR}/video/encoded_frame.h"
    #video_bitrate_allocation
    "${WEBRTC_API_DIR}/video/video_bitrate_allocation.cc"
    "${WEBRTC_API_DIR}/video/video_bitrate_allocation.h"
    #video_bitrate_allocator
    "${WEBRTC_API_DIR}/video/video_bitrate_allocator.cc"
    "${WEBRTC_API_DIR}/video/video_bitrate_allocator.h"
    #video_stream_decoder_create
    "${WEBRTC_API_DIR}/video/video_stream_decoder_create.cc"
    "${WEBRTC_API_DIR}/video/video_stream_decoder_create.h"
    #video_adaptation
    "${WEBRTC_API_DIR}/video/video_adaptation_counters.cc"
    "${WEBRTC_API_DIR}/video/video_adaptation_counters.h"
    "${WEBRTC_API_DIR}/video/video_adaptation_reason.h"
    #video_stream_encoder
    "${WEBRTC_API_DIR}/video/video_stream_encoder_interface.h"
    "${WEBRTC_API_DIR}/video/video_stream_encoder_observer.h"
    "${WEBRTC_API_DIR}/video/video_stream_encoder_settings.h"
    #video_frame_metadata
    "${WEBRTC_API_DIR}/video/video_frame_metadata.cc"
    "${WEBRTC_API_DIR}/video/video_frame_metadata.h"
    #video_stream_encoder_create
    "${WEBRTC_API_DIR}/video/video_stream_encoder_create.cc"
    "${WEBRTC_API_DIR}/video/video_stream_encoder_create.h"
    #builtin_video_bitrate_allocator_factory
    "${WEBRTC_API_DIR}/video/builtin_video_bitrate_allocator_factory.cc"
    "${WEBRTC_API_DIR}/video/builtin_video_bitrate_allocator_factory.h"
)
target_link_libraries("api_video"
    absl::optional
    yuv
)

add_custom_target("api")
set_target_properties("api" PROPERTIES FOLDER ${WEBRTC_API_IDE_FOLDER})
add_dependencies("api"
    "default_task_queue_factory"
    "task_queue"
    "rtc_event_log_factory"
    "crypto"
    "transport_api"
    "rtc_error"
    "libjingle_peerconnection_api"
    "create_peerconnection_factory"
    "rtp_parameters"
    "stun_types"
)

#add_library(webrtc::api ALIAS "api")