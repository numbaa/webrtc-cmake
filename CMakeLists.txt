cmake_minimum_required(VERSION 3.8)
project(webrtc)

set_property(GLOBAL PROPERTY USE_FOLDERS ON)
add_definitions(-DWEBRTC_WIN -DNOMINMAX)

set(CMAKE_SCRIPTS_DIR "cmake")
set(WEBRTC_SOURCE_DIR "src")
set(THIRD_PARTY_DIR "third_party")
set(DUMMY_CPP "${CMAKE_BINARY_DIR}/dummy.cpp")

file(WRITE ${DUMMY_CPP} "")

#include("${CMAKE_SCRIPTS_DIR}/fetch-src.cmake")
include("${CMAKE_SCRIPTS_DIR}/third-party.cmake")
include("${CMAKE_SCRIPTS_DIR}/webrtc.cmake")

add_library(${PROJECT_NAME} SHARED ${DUMMY_CPP})
add_library("${PROJECT_NAME}-static" STATIC ${DUMMY_CPP})

#add_dependencies(${PROJECT_NAME} webrtc-src)
#add_dependencies("${PROJECT_NAME}-static" webrtc-src)

target_include_directories(${PROJECT_NAME}
    INTERFACE
        ${WEBRTC_SOURCE_DIR}
)

target_include_directories("${PROJECT_NAME}-static"
    INTERFACE
        ${WEBRTC_SOURCE_DIR}
)

set(win_lib
    winmm
    ws2_32
    crypt32
    secur32
)

target_link_libraries(${PROJECT_NAME}
    rtp_parameters
    stun_types
    video_codecs_api
    modules_aecm_core
    libaom_av1_decoder
    api_video
    create_peerconnection_factory
    libjingle_peerconnection_api
    rtc_error
    transport_api
    crypto
    rtc_event_log_factory
    field_tral_base_config
    task_queue
    default_task_queue_factory
    audio
    call_interfaces
    rtp_interfaces
    call_rtp_receiver
    call_rtp_sender
    bitrate_configurator
    bitrate_allocator
    simulated_network
    video_stream_api
    call
    common_audio_c
    common_audio
    common_video
    rtc_media_base
    rtc_constants
    rtc_simulcast_encoder_adapter
    rtc_encoder_simulcast_proxy
    rtc_internal_video_codecs
    rtc_audio_video
    rtc_media_engine_defaults
    rtc_data
    rtc_media
    modules_audio_coding
    modules_audio_device
    modules_audio_mixer
    modules_audio_processing
    modules_congestion_controller
    modules_pacing
    modules_remote_bitrate_estimator
    modules_rtp_rtcp
    modules_utility
    modules_video_coding
    modules_video_processing
    cascaded_biquad_filter
    legacy_delay_estimator
    pffft_wrapper
    p2p
    rtc_pc_base
    aligned_malloc
    spl_sqrt_floor
    video_stream_decoder_impl
    rate_control_settings
    media_protocol_names
    peerconnection
    connection_context
    jitter_buffer_delay
    jitter_buffer_delay_interface
    jitter_buffer_delay_proxy
    media_stream
    peer_connection_message_handler
    remote_audio_source
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
    audio_rtp_receiver
    video_rtp_track_source
    audio_track
    dtmf_sender
    rtc_base_checks
    rtc_base_rtc_task_queue
    rtc_base_stringutils
    rtc_base_platform_thread_types
    rtc_base_criticalsection
    rtc_base_timeutils
    rtc_base_platform_thread
    rtc_base_logging
    rtc_base_rtc_base_approved
    rtc_base_sequence_checker
    rtc_base
    video
    video_stream_encoder_impl
    ${win_lib}
)

target_link_libraries("${PROJECT_NAME}-static"
    create_peerconnection_factory
    libjingle_peerconnection_api
    rtc_error
    transport_api
    crypto
    rtc_event_log_factory
    field_tral_base_config
    task_queue
    default_task_queue_factory
    audio
    call_interfaces
    rtp_interfaces
    call_rtp_receiver
    call_rtp_sender
    bitrate_configurator
    bitrate_allocator
    simulated_network
    video_stream_api
    call
    common_audio_c
    common_audio
    common_video
    rtc_media_base
    rtc_constants
    rtc_simulcast_encoder_adapter
    rtc_encoder_simulcast_proxy
    rtc_internal_video_codecs
    rtc_audio_video
    rtc_media_engine_defaults
    rtc_data
    rtc_media
    modules_audio_coding
    modules_audio_device
    modules_audio_mixer
    modules_audio_processing
    modules_congestion_controller
    modules_pacing
    modules_remote_bitrate_estimator
    modules_rtp_rtcp
    modules_utility
    modules_video_coding
    modules_video_processing
    p2p
    rtc_pc_base
    media_protocol_names
    peerconnection
    connection_context
    jitter_buffer_delay
    jitter_buffer_delay_interface
    jitter_buffer_delay_proxy
    media_stream
    peer_connection_message_handler
    remote_audio_source
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
    audio_rtp_receiver
    video_rtp_track_source
    audio_track
    dtmf_sender
    rtc_base_checks
    rtc_base_rtc_task_queue
    rtc_base_stringutils
    rtc_base_platform_thread_types
    rtc_base_criticalsection
    rtc_base_timeutils
    rtc_base_platform_thread
    rtc_base_logging
    rtc_base_rtc_base_approved
    rtc_base
    video
    video_stream_encoder_impl
)
