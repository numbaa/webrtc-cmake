
set(WEBRTC_API_DIR "${WEBRTC_SOURCE_DIR}/api")
set(WEBRTC_API_IDE_FOLDER "webrtc/api")
add_library("create_peerconnection_factory" OBJECT
    "${WEBRTC_API_DIR}/create_peerconnection_factory.cc"
    "${WEBRTC_API_DIR}/create_peerconnection_factory.h"
)
target_include_directories("create_peerconnection_factory" PRIVATE ${WEBRTC_SOURCE_DIR})
set_target_properties("create_peerconnection_factory" PROPERTIES FOLDER ${WEBRTC_API_IDE_FOLDER})
target_link_libraries("create_peerconnection_factory"
    PRIVATE
        "libjingle_peerconnection_api"
        "absl::optional"
)


add_library("libjingle_peerconnection_api" OBJECT
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
target_include_directories("libjingle_peerconnection_api" PRIVATE ${WEBRTC_SOURCE_DIR})
target_link_libraries("libjingle_peerconnection_api"
    PRIVATE
        "absl::optional"
)
set_target_properties("libjingle_peerconnection_api" PROPERTIES FOLDER ${WEBRTC_API_IDE_FOLDER})

add_library("rtc_error" OBJECT
    "${WEBRTC_API_DIR}/rtc_error.cc"
    "${WEBRTC_API_DIR}/rtc_error.h"
)
target_include_directories("rtc_error" PRIVATE ${WEBRTC_SOURCE_DIR})
set_target_properties("rtc_error" PROPERTIES FOLDER ${WEBRTC_API_IDE_FOLDER})

add_library("transport_api" OBJECT
    "${WEBRTC_API_DIR}/call/transport.cc"
    "${WEBRTC_API_DIR}/call/transport.h"
)
set_target_properties("transport_api" PROPERTIES FOLDER ${WEBRTC_API_IDE_FOLDER})

add_library("crypto" OBJECT
    "${WEBRTC_API_DIR}/crypto/crypto_options.cc"
    "${WEBRTC_API_DIR}/crypto/crypto_options.h"
    "${WEBRTC_API_DIR}/crypto/frame_encryptor_interface.h"
    "${WEBRTC_API_DIR}/crypto/frame_decryptor_interface.h"
)
set_target_properties("crypto" PROPERTIES FOLDER ${WEBRTC_API_IDE_FOLDER})

add_library("rtc_event_log_factory" OBJECT
    "${WEBRTC_API_DIR}/rtc_event_log/rtc_event.cc"
    "${WEBRTC_API_DIR}/rtc_event_log/rtc_event.h"
    "${WEBRTC_API_DIR}/rtc_event_log/rtc_event_log.cc"
    "${WEBRTC_API_DIR}/rtc_event_log/rtc_event_log.h"
    "${WEBRTC_API_DIR}/rtc_event_log/rtc_event_log_factory_interface.h"
    "${WEBRTC_API_DIR}/rtc_event_log/rtc_event_log_factory.cc"
    "${WEBRTC_API_DIR}/rtc_event_log/rtc_event_log_factory.h"

)
set_target_properties("rtc_event_log_factory" PROPERTIES FOLDER ${WEBRTC_API_IDE_FOLDER})

add_library("field_tral_base_config"
    "${WEBRTC_API_DIR}/transport/field_trial_based_config.cc"
    "${WEBRTC_API_DIR}/transport/field_trial_based_config.h"
)
target_include_directories("field_tral_base_config"
    PRIVATE
        "${WEBRTC_SOURCE_DIR}"
    PUBLIC
        "${WEBRTC_API_DIR}/transport"
)
target_link_libraries("field_tral_base_config"
    absl::optional
)
set_target_properties("field_tral_base_config" PROPERTIES FOLDER ${WEBRTC_API_IDE_FOLDER})


add_library("task_queue" OBJECT
    "${WEBRTC_API_DIR}/task_queue/queued_task.h"
    "${WEBRTC_API_DIR}/task_queue/task_queue_base.h"
    "${WEBRTC_API_DIR}/task_queue/task_queue_factory.h"
    "${WEBRTC_API_DIR}/task_queue/task_queue_base.cc"
)
set_target_properties("task_queue" PROPERTIES FOLDER ${WEBRTC_API_IDE_FOLDER})

add_library("default_task_queue_factory" OBJECT
    "${WEBRTC_API_DIR}/task_queue/default_task_queue_factory.h"
    "${WEBRTC_API_DIR}/task_queue/default_task_queue_factory_stdlib.cc"
)
set_target_properties("default_task_queue_factory" PROPERTIES FOLDER ${WEBRTC_API_IDE_FOLDER})

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
)

#add_library(webrtc::api ALIAS "api")