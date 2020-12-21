set(WEBRTC_CALL_DIR "${WEBRTC_SOURCE_DIR}/call")

add_library("${WEBRTC_COMPONENT_PREFIX}_call_interfaces" STATIC
    "${WEBRTC_CALL_DIR}/audio_receive_stream.cc"
    "${WEBRTC_CALL_DIR}/audio_receive_stream.h"
    "${WEBRTC_CALL_DIR}/audio_send_stream.h"
    "${WEBRTC_CALL_DIR}/audio_state.cc"
    "${WEBRTC_CALL_DIR}/audio_state.h"
    "${WEBRTC_CALL_DIR}/call.h"
    "${WEBRTC_CALL_DIR}/call_config.cc"
    "${WEBRTC_CALL_DIR}/call_config.h"
    "${WEBRTC_CALL_DIR}/flexfec_receive_stream.cc"
    "${WEBRTC_CALL_DIR}/flexfec_receive_stream.h"
    "${WEBRTC_CALL_DIR}/packet_receiver.h"
    "${WEBRTC_CALL_DIR}/syncable.cc"
    "${WEBRTC_CALL_DIR}/syncable.h"
)

add_library("${WEBRTC_COMPONENT_PREFIX}_rtp_interfaces" STATIC
    "${WEBRTC_CALL_DIR}/rtp_config.cc"
    "${WEBRTC_CALL_DIR}/rtp_config.h"
    "${WEBRTC_CALL_DIR}/rtp_packet_sink_interface.h"
    "${WEBRTC_CALL_DIR}/rtp_stream_receiver_controller_interface.h"
    "${WEBRTC_CALL_DIR}/rtp_transport_controller_send_interface.h"
)

add_library("${WEBRTC_COMPONENT_PREFIX}_rtp_receiver" STATIC
    "${WEBRTC_CALL_DIR}/rtp_demuxer.cc"
    "${WEBRTC_CALL_DIR}/rtp_demuxer.h"
    "${WEBRTC_CALL_DIR}/rtp_stream_receiver_controller.cc"
    "${WEBRTC_CALL_DIR}/rtp_stream_receiver_controller.h"
    "${WEBRTC_CALL_DIR}/rtx_receive_stream.cc"
    "${WEBRTC_CALL_DIR}/rtx_receive_stream.h"
)

add_library("${WEBRTC_COMPONENT_PREFIX}_rtp_sender" STATIC
    "${WEBRTC_CALL_DIR}/rtp_payload_params.cc"
    "${WEBRTC_CALL_DIR}/rtp_payload_params.h"
    "${WEBRTC_CALL_DIR}/rtp_transport_controller_send.cc"
    "${WEBRTC_CALL_DIR}/rtp_transport_controller_send.h"
    "${WEBRTC_CALL_DIR}/rtp_video_sender.cc"
    "${WEBRTC_CALL_DIR}/rtp_video_sender.h"
    "${WEBRTC_CALL_DIR}/rtp_video_sender_interface.h"
)

add_library("${WEBRTC_COMPONENT_PREFIX}_bitrate_configurator" STATIC
    "${WEBRTC_CALL_DIR}/rtp_bitrate_configurator.cc"
    "${WEBRTC_CALL_DIR}/rtp_bitrate_configurator.h"
)

add_library("${WEBRTC_COMPONENT_PREFIX}_bitrate_allocator" STATIC
    "${WEBRTC_CALL_DIR}/bitrate_allocator.cc"
    "${WEBRTC_CALL_DIR}/bitrate_allocator.h"
)

add_library("${WEBRTC_COMPONENT_PREFIX}_simulated_network" STATIC
    "${WEBRTC_CALL_DIR}/simulated_network.cc"
    "${WEBRTC_CALL_DIR}/simulated_network.h"
)

add_library("${WEBRTC_COMPONENT_PREFIX}_video_stream_api" STATIC
    "${WEBRTC_CALL_DIR}/video_receive_stream.cc"
    "${WEBRTC_CALL_DIR}/video_receive_stream.h"
    "${WEBRTC_CALL_DIR}/video_send_stream.cc"
    "${WEBRTC_CALL_DIR}/video_send_stream.h"
)

add_library("${WEBRTC_COMPONENT_PREFIX}_call" STATIC
    "${WEBRTC_CALL_DIR}/call.cc"
    "${WEBRTC_CALL_DIR}/call_factory.cc"
    "${WEBRTC_CALL_DIR}/call_factory.h"
    "${WEBRTC_CALL_DIR}/degraded_call.cc"
    "${WEBRTC_CALL_DIR}/degraded_call.h"
    "${WEBRTC_CALL_DIR}/flexfec_receive_stream_impl.cc"
    "${WEBRTC_CALL_DIR}/flexfec_receive_stream_impl.h"
    "${WEBRTC_CALL_DIR}/receive_time_calculator.cc"
    "${WEBRTC_CALL_DIR}/receive_time_calculator.h"
)

target_link_libraries("${WEBRTC_COMPONENT_PREFIX}_call" STATIC
    "${WEBRTC_COMPONENT_PREFIX}_call_interfaces"
    "${WEBRTC_COMPONENT_PREFIX}_rtp_interfaces"
    "${WEBRTC_COMPONENT_PREFIX}_rtp_receiver"
    "${WEBRTC_COMPONENT_PREFIX}_rtp_sender"
    "${WEBRTC_COMPONENT_PREFIX}_bitrate_configurator"
    "${WEBRTC_COMPONENT_PREFIX}_bitrate_allocator"
    "${WEBRTC_COMPONENT_PREFIX}_simulated_network"
    "${WEBRTC_COMPONENT_PREFIX}_video_stream_api"
)

add_library(webrtc::call ALIAS "${WEBRTC_COMPONENT_PREFIX}_call")