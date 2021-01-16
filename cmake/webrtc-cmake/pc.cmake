set(WEBRTC_PC_DIR "${WEBRTC_SOURCE_DIR}/pc")
set(WEBRTC_PC_IDE_FOLDER "webrtc/pc")

add_library("${WEBRTC_COMPONENT_PREFIX}pc" OBJECT
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
    #media_protocol_names
    "${WEBRTC_PC_DIR}/media_protocol_names.cc"
    "${WEBRTC_PC_DIR}/media_protocol_names.h"
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
    #audio_rtp_receiver"
    #connection_context"
    "${WEBRTC_PC_DIR}/connection_context.cc"
    "${WEBRTC_PC_DIR}/connection_context.h"
    #jitter_buffer_delay"
    "${WEBRTC_PC_DIR}/jitter_buffer_delay.cc"
    "${WEBRTC_PC_DIR}/jitter_buffer_delay.h"
    #jitter_buffer_delay_interface"
    "${WEBRTC_PC_DIR}/jitter_buffer_delay_interface.h"
    #jitter_buffer_delay_proxy"
    "${WEBRTC_PC_DIR}/jitter_buffer_delay_proxy.h"
    #media_protocol_names"
    "${WEBRTC_PC_DIR}/media_protocol_names.cc"
    "${WEBRTC_PC_DIR}/media_protocol_names.h"
    #media_stream"
    "${WEBRTC_PC_DIR}/media_stream.cc"
    "${WEBRTC_PC_DIR}/media_stream.h"
    #peer_connection_message_handler"
    "${WEBRTC_PC_DIR}/peer_connection_message_handler.cc"
    "${WEBRTC_PC_DIR}/peer_connection_message_handler.h"
    #remote_audio_source"
    "${WEBRTC_PC_DIR}/remote_audio_source.cc"
    "${WEBRTC_PC_DIR}/remote_audio_source.h"
    #rtc_pc_base"
    #rtp_parameters_conversion"
    "${WEBRTC_PC_DIR}/rtp_parameters_conversion.cc"
    "${WEBRTC_PC_DIR}/rtp_parameters_conversion.h"
    #rtp_receiver"
    "${WEBRTC_PC_DIR}/rtp_receiver.cc"
    "${WEBRTC_PC_DIR}/rtp_receiver.h"
    #rtp_sender"
    "${WEBRTC_PC_DIR}/rtp_sender.cc"
    "${WEBRTC_PC_DIR}/rtp_sender.h"
    #rtp_transceiver"
    "${WEBRTC_PC_DIR}/rtp_transceiver.cc"
    "${WEBRTC_PC_DIR}/rtp_transceiver.h"
    #rtp_transmission_manager"
    "${WEBRTC_PC_DIR}/rtp_transmission_manager.cc"
    "${WEBRTC_PC_DIR}/rtp_transmission_manager.h"
    #sdp_state_provider"
    "${WEBRTC_PC_DIR}/sdp_state_provider.h"
    #stats_collector_interface"
    "${WEBRTC_PC_DIR}/stats_collector_interface.h"
    #transceiver_list"
    "${WEBRTC_PC_DIR}/transceiver_list.cc"
    "${WEBRTC_PC_DIR}/transceiver_list.h"
    #usage_pattern"
    "${WEBRTC_PC_DIR}/usage_pattern.cc"
    "${WEBRTC_PC_DIR}/usage_pattern.h"
    #video_rtp_receiver"
    "${WEBRTC_PC_DIR}/video_rtp_receiver.cc"
    "${WEBRTC_PC_DIR}/video_rtp_receiver.h"
    #video_track"
    "${WEBRTC_PC_DIR}/video_track.cc"
    "${WEBRTC_PC_DIR}/video_track.h"
    #video_track_source"
    "${WEBRTC_PC_DIR}/video_track_source.cc"
    "${WEBRTC_PC_DIR}/video_track_source.h"
    #audio_rtp_receiver
    "${WEBRTC_PC_DIR}/audio_rtp_receiver.cc"
    "${WEBRTC_PC_DIR}/audio_rtp_receiver.h"
    #video_rtp_track_source
    "${WEBRTC_PC_DIR}/video_rtp_track_source.cc"
    "${WEBRTC_PC_DIR}/video_rtp_track_source.h"
    #audio_track
    "${WEBRTC_PC_DIR}/audio_track.cc"
    "${WEBRTC_PC_DIR}/audio_track.h"
    #dtmf_sender
    "${WEBRTC_PC_DIR}/dtmf_sender.cc"
    "${WEBRTC_PC_DIR}/dtmf_sender.h"
)
set_target_properties("${WEBRTC_COMPONENT_PREFIX}pc" PROPERTIES FOLDER ${WEBRTC_PC_IDE_FOLDER})
target_link_libraries("${WEBRTC_COMPONENT_PREFIX}pc"
    "absl::optional"
    "usrsctp-static"
)
target_include_directories("${WEBRTC_COMPONENT_PREFIX}pc"
    PRIVATE
        ${WEBRTC_SOURCE_DIR}
)
#add_library(webrtc::pc ALIAS "${WEBRTC_COMPONENT_PREFIX}pc")