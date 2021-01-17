set(WEBRTC_PC_DIR "${WEBRTC_SOURCE_DIR}/pc")
set(WEBRTC_PC_IDE_FOLDER "webrtc/pc")

add_webrtc_object("rtc_pc_base" ${WEBRTC_PC_IDE_FOLDER}
    #rtc_pc_base
    "${WEBRTC_PC_DIR}/channel.cc"
    "${WEBRTC_PC_DIR}/channel.h"
    "${WEBRTC_PC_DIR}/channel_interface.h"
    "${WEBRTC_PC_DIR}/channel_manager.cc"
    "${WEBRTC_PC_DIR}/channel_manager.h"
    "${WEBRTC_PC_DIR}/composite_rtp_transport.cc"
    "${WEBRTC_PC_DIR}/composite_rtp_transport.h"
    "${WEBRTC_PC_DIR}/dtls_srtp_transport.cc"
    "${WEBRTC_PC_DIR}/dtls_srtp_transport.h"
    "${WEBRTC_PC_DIR}/dtls_transport.cc"
    "${WEBRTC_PC_DIR}/dtls_transport.h"
    "${WEBRTC_PC_DIR}/external_hmac.cc"
    "${WEBRTC_PC_DIR}/external_hmac.h"
    "${WEBRTC_PC_DIR}/ice_transport.cc"
    "${WEBRTC_PC_DIR}/ice_transport.h"
    "${WEBRTC_PC_DIR}/jsep_transport.cc"
    "${WEBRTC_PC_DIR}/jsep_transport.h"
    "${WEBRTC_PC_DIR}/jsep_transport_controller.cc"
    "${WEBRTC_PC_DIR}/jsep_transport_controller.h"
    "${WEBRTC_PC_DIR}/media_session.cc"
    "${WEBRTC_PC_DIR}/media_session.h"
    "${WEBRTC_PC_DIR}/rtcp_mux_filter.cc"
    "${WEBRTC_PC_DIR}/rtcp_mux_filter.h"
    "${WEBRTC_PC_DIR}/rtp_media_utils.cc"
    "${WEBRTC_PC_DIR}/rtp_media_utils.h"
    "${WEBRTC_PC_DIR}/rtp_transport.cc"
    "${WEBRTC_PC_DIR}/rtp_transport.h"
    "${WEBRTC_PC_DIR}/rtp_transport_internal.h"
    "${WEBRTC_PC_DIR}/sctp_data_channel_transport.cc"
    "${WEBRTC_PC_DIR}/sctp_data_channel_transport.h"
    "${WEBRTC_PC_DIR}/sctp_transport.cc"
    "${WEBRTC_PC_DIR}/sctp_transport.h"
    "${WEBRTC_PC_DIR}/sctp_utils.cc"
    "${WEBRTC_PC_DIR}/sctp_utils.h"
    "${WEBRTC_PC_DIR}/session_description.cc"
    "${WEBRTC_PC_DIR}/session_description.h"
    "${WEBRTC_PC_DIR}/simulcast_description.cc"
    "${WEBRTC_PC_DIR}/simulcast_description.h"
    "${WEBRTC_PC_DIR}/srtp_filter.cc"
    "${WEBRTC_PC_DIR}/srtp_filter.h"
    "${WEBRTC_PC_DIR}/srtp_session.cc"
    "${WEBRTC_PC_DIR}/srtp_session.h"
    "${WEBRTC_PC_DIR}/srtp_transport.cc"
    "${WEBRTC_PC_DIR}/srtp_transport.h"
    "${WEBRTC_PC_DIR}/transport_stats.cc"
    "${WEBRTC_PC_DIR}/transport_stats.h"
    "${WEBRTC_PC_DIR}/used_ids.h"
)
target_link_libraries("rtc_pc_base"
    PRIVATE
        media_protocol_names
        absl::optional
        srtp
)

add_webrtc_object("media_protocol_names" ${WEBRTC_PC_IDE_FOLDER}
    #media_protocol_names
    "${WEBRTC_PC_DIR}/media_protocol_names.cc"
    "${WEBRTC_PC_DIR}/media_protocol_names.h"
)

add_webrtc_object("peerconnection" ${WEBRTC_PC_IDE_FOLDER}
    #peerconnection
    "${WEBRTC_PC_DIR}/data_channel_controller.cc"
    "${WEBRTC_PC_DIR}/data_channel_controller.h"
    "${WEBRTC_PC_DIR}/data_channel_utils.cc"
    "${WEBRTC_PC_DIR}/data_channel_utils.h"
    "${WEBRTC_PC_DIR}/ice_server_parsing.cc"
    "${WEBRTC_PC_DIR}/ice_server_parsing.h"
    "${WEBRTC_PC_DIR}/jsep_ice_candidate.cc"
    "${WEBRTC_PC_DIR}/jsep_session_description.cc"
    "${WEBRTC_PC_DIR}/local_audio_source.cc"
    "${WEBRTC_PC_DIR}/local_audio_source.h"
    "${WEBRTC_PC_DIR}/media_stream_observer.cc"
    "${WEBRTC_PC_DIR}/media_stream_observer.h"
    "${WEBRTC_PC_DIR}/peer_connection.cc"
    "${WEBRTC_PC_DIR}/peer_connection.h"
    "${WEBRTC_PC_DIR}/peer_connection_factory.cc"
    "${WEBRTC_PC_DIR}/peer_connection_factory.h"
    "${WEBRTC_PC_DIR}/peer_connection_internal.h"
    "${WEBRTC_PC_DIR}/rtc_stats_collector.cc"
    "${WEBRTC_PC_DIR}/rtc_stats_collector.h"
    "${WEBRTC_PC_DIR}/rtc_stats_traversal.cc"
    "${WEBRTC_PC_DIR}/rtc_stats_traversal.h"
    "${WEBRTC_PC_DIR}/rtp_data_channel.cc"
    "${WEBRTC_PC_DIR}/rtp_data_channel.h"
    "${WEBRTC_PC_DIR}/sctp_data_channel.cc"
    "${WEBRTC_PC_DIR}/sctp_data_channel.h"
    "${WEBRTC_PC_DIR}/sdp_offer_answer.cc"  # TODO: Make separate target when not circular
    "${WEBRTC_PC_DIR}/sdp_offer_answer.h"  # dependent on peerconnection.h
    "${WEBRTC_PC_DIR}/sdp_serializer.cc"
    "${WEBRTC_PC_DIR}/sdp_serializer.h"
    "${WEBRTC_PC_DIR}/sdp_utils.cc"
    "${WEBRTC_PC_DIR}/sdp_utils.h"
    "${WEBRTC_PC_DIR}/stats_collector.cc"
    "${WEBRTC_PC_DIR}/stats_collector.h"
    "${WEBRTC_PC_DIR}/stream_collection.h"
    "${WEBRTC_PC_DIR}/track_media_info_map.cc"
    "${WEBRTC_PC_DIR}/track_media_info_map.h"
    "${WEBRTC_PC_DIR}/webrtc_sdp.cc"
    "${WEBRTC_PC_DIR}/webrtc_sdp.h"
    "${WEBRTC_PC_DIR}/webrtc_session_description_factory.cc"
    "${WEBRTC_PC_DIR}/webrtc_session_description_factory.h"
)
target_link_libraries(peerconnection
    PRIVATE
        audio_rtp_receiver
        audio_track
        connection_context
        dtmf_sender
        jitter_buffer_delay
        jitter_buffer_delay_interface
        jitter_buffer_delay_proxy
        media_protocol_names
        media_stream
        peer_connection_message_handler
        remote_audio_source
        rtc_pc_base
        rtp_parameters_conversion
        rtp_receiver
        rtp_sender
        rtp_transceiver
        rtp_transmission_manager
        sdp_state_provider
        stats_collector_interface
        transceiver_list
        usage_pattern
        video_rtp_receiver
        video_track
        video_track_source
        absl::optional
)


add_webrtc_object("connection_context" ${WEBRTC_PC_IDE_FOLDER}
    #connection_context
    "${WEBRTC_PC_DIR}/connection_context.cc"
    "${WEBRTC_PC_DIR}/connection_context.h"
)
target_link_libraries(connection_context
    PRIVATE
        rtc_pc_base
        absl::optional
)

add_webrtc_object("jitter_buffer_delay" ${WEBRTC_PC_IDE_FOLDER}
    #jitter_buffer_delay"
    "${WEBRTC_PC_DIR}/jitter_buffer_delay.cc"
    "${WEBRTC_PC_DIR}/jitter_buffer_delay.h"
)
target_link_libraries(jitter_buffer_delay
    PRIVATE
        absl::optional
)

add_webrtc_object("jitter_buffer_delay_interface" ${WEBRTC_PC_IDE_FOLDER}
    #jitter_buffer_delay_interface"
    "${WEBRTC_PC_DIR}/jitter_buffer_delay_interface.h"
)
set_target_properties(jitter_buffer_delay_interface PROPERTIES LINKER_LANGUAGE CXX)

add_webrtc_object("jitter_buffer_delay_proxy" ${WEBRTC_PC_IDE_FOLDER}
    "${WEBRTC_PC_DIR}/jitter_buffer_delay_proxy.h"
)
set_target_properties(jitter_buffer_delay_proxy PROPERTIES LINKER_LANGUAGE CXX)

add_webrtc_object("media_stream" ${WEBRTC_PC_IDE_FOLDER}
    #media_stream"
    "${WEBRTC_PC_DIR}/media_stream.cc"
    "${WEBRTC_PC_DIR}/media_stream.h"
)
target_link_libraries(media_stream
    PRIVATE
        absl::optional
)

add_webrtc_object("peer_connection_message_handler" ${WEBRTC_PC_IDE_FOLDER}
    #peer_connection_message_handler"
    "${WEBRTC_PC_DIR}/peer_connection_message_handler.cc"
    "${WEBRTC_PC_DIR}/peer_connection_message_handler.h"
)
target_link_libraries(peer_connection_message_handler
    PRIVATE
        stats_collector_interface
        absl::optional
)

add_webrtc_object("remote_audio_source" ${WEBRTC_PC_IDE_FOLDER}
    #remote_audio_source"
    "${WEBRTC_PC_DIR}/remote_audio_source.cc"
    "${WEBRTC_PC_DIR}/remote_audio_source.h"
)
target_link_libraries(remote_audio_source
    PRIVATE
        rtc_pc_base
        absl::optional
)


add_webrtc_object("rtp_parameters_conversion" ${WEBRTC_PC_IDE_FOLDER}
    #rtp_parameters_conversion"
    "${WEBRTC_PC_DIR}/rtp_parameters_conversion.cc"
    "${WEBRTC_PC_DIR}/rtp_parameters_conversion.h"
)
target_link_libraries(rtp_parameters_conversion
    PRIVATE
        rtc_pc_base
        absl::optional
)

add_webrtc_object("rtp_receiver" ${WEBRTC_PC_IDE_FOLDER}
    #rtp_receiver"
    "${WEBRTC_PC_DIR}/rtp_receiver.cc"
    "${WEBRTC_PC_DIR}/rtp_receiver.h"
)
target_link_libraries(rtp_receiver
    PRIVATE
        media_stream
        video_track_source
        absl::optional
)

add_webrtc_object("rtp_sender" ${WEBRTC_PC_IDE_FOLDER}
    #rtp_sender"
    "${WEBRTC_PC_DIR}/rtp_sender.cc"
    "${WEBRTC_PC_DIR}/rtp_sender.h"
)
target_link_libraries(rtp_sender
    PRIVATE
        dtmf_sender
        stats_collector_interface
        absl::optional
)

add_webrtc_object("rtp_transceiver" ${WEBRTC_PC_IDE_FOLDER}
    #rtp_transceiver"
    "${WEBRTC_PC_DIR}/rtp_transceiver.cc"
    "${WEBRTC_PC_DIR}/rtp_transceiver.h"
)
target_link_libraries(rtp_transceiver
    PRIVATE
        rtc_pc_base
        rtp_parameters_conversion
        rtp_sender
        rtp_receiver
        absl::optional
)

add_webrtc_object("rtp_transmission_manager" ${WEBRTC_PC_IDE_FOLDER}
    #rtp_transmission_manager"
    "${WEBRTC_PC_DIR}/rtp_transmission_manager.cc"
    "${WEBRTC_PC_DIR}/rtp_transmission_manager.h"
)
target_link_libraries(rtp_transmission_manager
    PRIVATE
        rtc_pc_base
        audio_rtp_receiver
        rtp_sender
        rtp_receiver
        rtp_transceiver
        stats_collector_interface
        transceiver_list
        usage_pattern
        video_rtp_receiver
        absl::optional
)

add_webrtc_object("sdp_state_provider" ${WEBRTC_PC_IDE_FOLDER}
    #sdp_state_provider"
    "${WEBRTC_PC_DIR}/sdp_state_provider.h"
)
set_target_properties(sdp_state_provider PROPERTIES LINKER_LANGUAGE CXX)

add_webrtc_object("stats_collector_interface" ${WEBRTC_PC_IDE_FOLDER}
    #stats_collector_interface"
    "${WEBRTC_PC_DIR}/stats_collector_interface.h"
)
set_target_properties(stats_collector_interface PROPERTIES LINKER_LANGUAGE CXX)

add_webrtc_object("transceiver_list" ${WEBRTC_PC_IDE_FOLDER}
    #transceiver_list"
    "${WEBRTC_PC_DIR}/transceiver_list.cc"
    "${WEBRTC_PC_DIR}/transceiver_list.h"
)
target_link_libraries(transceiver_list
    PRIVATE
        rtp_transceiver
        absl::optional
)

add_webrtc_object("usage_pattern" ${WEBRTC_PC_IDE_FOLDER}
    #usage_pattern"
    "${WEBRTC_PC_DIR}/usage_pattern.cc"
    "${WEBRTC_PC_DIR}/usage_pattern.h"
)
target_link_libraries(usage_pattern
    PRIVATE
        absl::optional
)

add_webrtc_object("video_rtp_receiver" ${WEBRTC_PC_IDE_FOLDER}
    #video_rtp_receiver"
    "${WEBRTC_PC_DIR}/video_rtp_receiver.cc"
    "${WEBRTC_PC_DIR}/video_rtp_receiver.h"
)
target_link_libraries(video_rtp_receiver
    PRIVATE
        jitter_buffer_delay
        jitter_buffer_delay_interface
        jitter_buffer_delay_proxy
        media_stream
        rtp_receiver
        video_rtp_track_source
        video_track
        absl::optional
)

add_webrtc_object("video_track" ${WEBRTC_PC_IDE_FOLDER}
    #video_track"
    "${WEBRTC_PC_DIR}/video_track.cc"
    "${WEBRTC_PC_DIR}/video_track.h"
)
target_link_libraries(video_track
    PRIVATE
        absl::optional
)

add_webrtc_object("video_track_source" ${WEBRTC_PC_IDE_FOLDER}
    #video_track_source"
    "${WEBRTC_PC_DIR}/video_track_source.cc"
    "${WEBRTC_PC_DIR}/video_track_source.h"
)
target_link_libraries(video_track_source
    PRIVATE
        absl::optional
)

add_webrtc_object("audio_rtp_receiver" ${WEBRTC_PC_IDE_FOLDER}
    #audio_rtp_receiver
    "${WEBRTC_PC_DIR}/audio_rtp_receiver.cc"
    "${WEBRTC_PC_DIR}/audio_rtp_receiver.h"
)
target_link_libraries(audio_rtp_receiver
    PRIVATE
        audio_track
        jitter_buffer_delay
        jitter_buffer_delay_interface
        jitter_buffer_delay_proxy
        media_stream
        remote_audio_source
        rtp_receiver
        absl::optional
)

add_webrtc_object("video_rtp_track_source" ${WEBRTC_PC_IDE_FOLDER}
    #video_rtp_track_source
    "${WEBRTC_PC_DIR}/video_rtp_track_source.cc"
    "${WEBRTC_PC_DIR}/video_rtp_track_source.h"
)
target_link_libraries(video_rtp_track_source
    PRIVATE
        video_track_source
        absl::optional
)

add_webrtc_object("audio_track" ${WEBRTC_PC_IDE_FOLDER}
    #audio_track
    "${WEBRTC_PC_DIR}/audio_track.cc"
    "${WEBRTC_PC_DIR}/audio_track.h"
)
target_link_libraries(audio_track
    PRIVATE
        absl::optional
)

add_webrtc_object("dtmf_sender" ${WEBRTC_PC_IDE_FOLDER}
    #dtmf_sender
    "${WEBRTC_PC_DIR}/dtmf_sender.cc"
    "${WEBRTC_PC_DIR}/dtmf_sender.h"
)
target_link_libraries(dtmf_sender
    PRIVATE
        absl::optional
)


#add_library(webrtc::pc ALIAS "${WEBRTC_COMPONENT_PREFIX}pc")