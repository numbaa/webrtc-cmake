
set(WEBRTC_API_DIR "${WEBRTC_SOURCE_DIR}/api")

add_library("${WEBRTC_COMPONENT_PREFIX}api_create_peerconnection_factory" STATIC
    "${WEBRTC_API_DIR}/create_peerconnection_factory.cc"
    "${WEBRTC_API_DIR}/create_peerconnection_factory.h"
)


add_library("${WEBRTC_COMPONENT_PREFIX}api_libjingle_peerconnection_api" STATIC
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

add_library("${WEBRTC_COMPONENT_PREFIX}api_rtc_error" STATIC
    "${WEBRTC_API_DIR}/rtc_error.cc"
    "${WEBRTC_API_DIR}/rtc_error.h"
)

add_library("${WEBRTC_COMPONENT_PREFIX}api_transport_api" STATIC
    "${WEBRTC_API_DIR}/call/transport.cc"
    "${WEBRTC_API_DIR}/call/transport.h"
)

add_library("${WEBRTC_COMPONENT_PREFIX}api_crypto" STATIC
    "${WEBRTC_API_DIR}/crypto/crypto_options.cc"
    "${WEBRTC_API_DIR}/crypto/crypto_options.h"
    "${WEBRTC_API_DIR}/crypto/frame_encryptor_interface.h"
    "${WEBRTC_API_DIR}/crypto/frame_decryptor_interface.h"
)

add_library("${WEBRTC_COMPONENT_PREFIX}api_rtc_event_log_factory" STATIC
    "${WEBRTC_API_DIR}/rtc_event_log/rtc_event.cc"
    "${WEBRTC_API_DIR}/rtc_event_log/rtc_event.h"
    "${WEBRTC_API_DIR}/rtc_event_log/rtc_event_log.cc"
    "${WEBRTC_API_DIR}/rtc_event_log/rtc_event_log.h"
    "${WEBRTC_API_DIR}/rtc_event_log/rtc_event_log_factory_interface.h"
    "${WEBRTC_API_DIR}/rtc_event_log/rtc_event_log_factory.cc"
    "${WEBRTC_API_DIR}/rtc_event_log/rtc_event_log_factory.h"

)

add_library("${WEBRTC_COMPONENT_PREFIX}api_task_queue" STATIC
    "${WEBRTC_API_DIR}/task_queue/queued_task.h"
    "${WEBRTC_API_DIR}/task_queue/task_queue_base.h"
    "${WEBRTC_API_DIR}/task_queue/task_queue_factory.h"
    "${WEBRTC_API_DIR}/task_queue/task_queue_base.cc"
)

add_library("${WEBRTC_COMPONENT_PREFIX}api_default_task_queue_factory" STATIC
    "${WEBRTC_API_DIR}/task_queue/default_task_queue_factory.h"
    "${WEBRTC_API_DIR}/task_queue/default_task_queue_factory_stdlib.cc"
)