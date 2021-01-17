set(WEBRTC_CALL_DIR "${WEBRTC_SOURCE_DIR}/call")
set(WEBRTC_CALL_IDE_FOLDER "webrtc/call")

add_webrtc_object("call_interfaces" ${WEBRTC_CALL_IDE_FOLDER}
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
target_link_libraries("call_interfaces"
    PRIVATE
        rtp_interfaces
        video_stream_api
        absl::optional
)

add_webrtc_object("rtp_interfaces" ${WEBRTC_CALL_IDE_FOLDER}
    "${WEBRTC_CALL_DIR}/rtp_config.cc"
    "${WEBRTC_CALL_DIR}/rtp_config.h"
    "${WEBRTC_CALL_DIR}/rtp_packet_sink_interface.h"
    "${WEBRTC_CALL_DIR}/rtp_stream_receiver_controller_interface.h"
    "${WEBRTC_CALL_DIR}/rtp_transport_controller_send_interface.h"
)
target_link_libraries("rtp_interfaces"
    PRIVATE
        absl::optional
)

add_webrtc_object("call_rtp_receiver" ${WEBRTC_CALL_IDE_FOLDER}
    "${WEBRTC_CALL_DIR}/rtp_demuxer.cc"
    "${WEBRTC_CALL_DIR}/rtp_demuxer.h"
    "${WEBRTC_CALL_DIR}/rtp_stream_receiver_controller.cc"
    "${WEBRTC_CALL_DIR}/rtp_stream_receiver_controller.h"
    "${WEBRTC_CALL_DIR}/rtx_receive_stream.cc"
    "${WEBRTC_CALL_DIR}/rtx_receive_stream.h"
)
target_link_libraries("call_rtp_receiver"
    PRIVATE
        absl::optional
        rtp_interfaces
)


add_webrtc_object("call_rtp_sender" ${WEBRTC_CALL_IDE_FOLDER}
    "${WEBRTC_CALL_DIR}/rtp_payload_params.cc"
    "${WEBRTC_CALL_DIR}/rtp_payload_params.h"
    "${WEBRTC_CALL_DIR}/rtp_transport_controller_send.cc"
    "${WEBRTC_CALL_DIR}/rtp_transport_controller_send.h"
    "${WEBRTC_CALL_DIR}/rtp_video_sender.cc"
    "${WEBRTC_CALL_DIR}/rtp_video_sender.h"
    "${WEBRTC_CALL_DIR}/rtp_video_sender_interface.h"
)
target_link_libraries("call_rtp_sender"
    PRIVATE
        absl::optional
        rtp_interfaces
        bitrate_configurator
)

add_webrtc_object("bitrate_configurator" ${WEBRTC_CALL_IDE_FOLDER}
    "${WEBRTC_CALL_DIR}/rtp_bitrate_configurator.cc"
    "${WEBRTC_CALL_DIR}/rtp_bitrate_configurator.h"
)
target_link_libraries("bitrate_configurator"
    PRIVATE
        absl::optional
        rtp_interfaces
)

add_webrtc_object("bitrate_allocator" ${WEBRTC_CALL_IDE_FOLDER}
    "${WEBRTC_CALL_DIR}/bitrate_allocator.cc"
    "${WEBRTC_CALL_DIR}/bitrate_allocator.h"
)
target_link_libraries("bitrate_allocator"
    PRIVATE
        absl::optional
)

add_webrtc_object("simulated_network" ${WEBRTC_CALL_IDE_FOLDER}
    "${WEBRTC_CALL_DIR}/simulated_network.cc"
    "${WEBRTC_CALL_DIR}/simulated_network.h"
)
target_link_libraries("simulated_network"
    PRIVATE
        absl::optional
)

add_webrtc_object("video_stream_api" ${WEBRTC_CALL_IDE_FOLDER}
    "${WEBRTC_CALL_DIR}/video_receive_stream.cc"
    "${WEBRTC_CALL_DIR}/video_receive_stream.h"
    "${WEBRTC_CALL_DIR}/video_send_stream.cc"
    "${WEBRTC_CALL_DIR}/video_send_stream.h"
)
target_link_libraries("video_stream_api"
    PRIVATE
        absl::optional
        rtp_interfaces
)

add_webrtc_object("call" ${WEBRTC_CALL_IDE_FOLDER}
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
target_link_libraries("call"
    call_interfaces
    rtp_interfaces
    call_rtp_receiver
    call_rtp_sender
    bitrate_configurator
    bitrate_allocator
    simulated_network
    video_stream_api
    absl::optional
)