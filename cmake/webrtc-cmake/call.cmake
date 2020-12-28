set(WEBRTC_CALL_DIR "${WEBRTC_SOURCE_DIR}/call")
set(WEBRTC_CALL_IDE_FOLDER "webrtc/call")

add_library("${WEBRTC_COMPONENT_PREFIX}call_interfaces" OBJECT
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
set_target_properties("${WEBRTC_COMPONENT_PREFIX}call_interfaces" PROPERTIES FOLDER ${WEBRTC_CALL_IDE_FOLDER})

add_library("${WEBRTC_COMPONENT_PREFIX}rtp_interfaces" OBJECT
    "${WEBRTC_CALL_DIR}/rtp_config.cc"
    "${WEBRTC_CALL_DIR}/rtp_config.h"
    "${WEBRTC_CALL_DIR}/rtp_packet_sink_interface.h"
    "${WEBRTC_CALL_DIR}/rtp_stream_receiver_controller_interface.h"
    "${WEBRTC_CALL_DIR}/rtp_transport_controller_send_interface.h"
)
set_target_properties("${WEBRTC_COMPONENT_PREFIX}rtp_interfaces" PROPERTIES FOLDER ${WEBRTC_CALL_IDE_FOLDER})

add_library("${WEBRTC_COMPONENT_PREFIX}rtp_receiver" OBJECT
    "${WEBRTC_CALL_DIR}/rtp_demuxer.cc"
    "${WEBRTC_CALL_DIR}/rtp_demuxer.h"
    "${WEBRTC_CALL_DIR}/rtp_stream_receiver_controller.cc"
    "${WEBRTC_CALL_DIR}/rtp_stream_receiver_controller.h"
    "${WEBRTC_CALL_DIR}/rtx_receive_stream.cc"
    "${WEBRTC_CALL_DIR}/rtx_receive_stream.h"
)
set_target_properties("${WEBRTC_COMPONENT_PREFIX}rtp_receiver" PROPERTIES FOLDER ${WEBRTC_CALL_IDE_FOLDER})

add_library("${WEBRTC_COMPONENT_PREFIX}rtp_sender" OBJECT
    "${WEBRTC_CALL_DIR}/rtp_payload_params.cc"
    "${WEBRTC_CALL_DIR}/rtp_payload_params.h"
    "${WEBRTC_CALL_DIR}/rtp_transport_controller_send.cc"
    "${WEBRTC_CALL_DIR}/rtp_transport_controller_send.h"
    "${WEBRTC_CALL_DIR}/rtp_video_sender.cc"
    "${WEBRTC_CALL_DIR}/rtp_video_sender.h"
    "${WEBRTC_CALL_DIR}/rtp_video_sender_interface.h"
)
set_target_properties("${WEBRTC_COMPONENT_PREFIX}rtp_sender" PROPERTIES FOLDER ${WEBRTC_CALL_IDE_FOLDER})

add_library("${WEBRTC_COMPONENT_PREFIX}bitrate_configurator" OBJECT
    "${WEBRTC_CALL_DIR}/rtp_bitrate_configurator.cc"
    "${WEBRTC_CALL_DIR}/rtp_bitrate_configurator.h"
)
set_target_properties("${WEBRTC_COMPONENT_PREFIX}bitrate_configurator" PROPERTIES FOLDER ${WEBRTC_CALL_IDE_FOLDER})

add_library("${WEBRTC_COMPONENT_PREFIX}bitrate_allocator" OBJECT
    "${WEBRTC_CALL_DIR}/bitrate_allocator.cc"
    "${WEBRTC_CALL_DIR}/bitrate_allocator.h"
)
set_target_properties("${WEBRTC_COMPONENT_PREFIX}bitrate_allocator" PROPERTIES FOLDER ${WEBRTC_CALL_IDE_FOLDER})

add_library("${WEBRTC_COMPONENT_PREFIX}simulated_network" OBJECT
    "${WEBRTC_CALL_DIR}/simulated_network.cc"
    "${WEBRTC_CALL_DIR}/simulated_network.h"
)
set_target_properties("${WEBRTC_COMPONENT_PREFIX}simulated_network" PROPERTIES FOLDER ${WEBRTC_CALL_IDE_FOLDER})

add_library("${WEBRTC_COMPONENT_PREFIX}video_stream_api" OBJECT
    "${WEBRTC_CALL_DIR}/video_receive_stream.cc"
    "${WEBRTC_CALL_DIR}/video_receive_stream.h"
    "${WEBRTC_CALL_DIR}/video_send_stream.cc"
    "${WEBRTC_CALL_DIR}/video_send_stream.h"
)
set_target_properties("${WEBRTC_COMPONENT_PREFIX}video_stream_api" PROPERTIES FOLDER ${WEBRTC_CALL_IDE_FOLDER})

add_library("${WEBRTC_COMPONENT_PREFIX}call" OBJECT
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
set_target_properties("${WEBRTC_COMPONENT_PREFIX}call" PROPERTIES FOLDER ${WEBRTC_CALL_IDE_FOLDER})

target_link_libraries("${WEBRTC_COMPONENT_PREFIX}call"
    "${WEBRTC_COMPONENT_PREFIX}call_interfaces"
    "${WEBRTC_COMPONENT_PREFIX}rtp_interfaces"
    "${WEBRTC_COMPONENT_PREFIX}rtp_receiver"
    "${WEBRTC_COMPONENT_PREFIX}rtp_sender"
    "${WEBRTC_COMPONENT_PREFIX}bitrate_configurator"
    "${WEBRTC_COMPONENT_PREFIX}bitrate_allocator"
    "${WEBRTC_COMPONENT_PREFIX}simulated_network"
    "${WEBRTC_COMPONENT_PREFIX}video_stream_api"
)

#add_library(webrtc::call ALIAS "${WEBRTC_COMPONENT_PREFIX}call")