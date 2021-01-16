set(WEBRTC_RTC_BASE_DIR "${WEBRTC_SOURCE_DIR}/rtc_base")
set(WEBRTC_RTC_BASE_IDE_FOLDER "webrtc/rtc_base")

add_webrtc_object("rtc_base_checks" ${WEBRTC_RTC_BASE_IDE_FOLDER}
    "${WEBRTC_RTC_BASE_DIR}/checks.cc"
    "${WEBRTC_RTC_BASE_DIR}/checks.h"
)
target_link_libraries("rtc_base_checks"
    absl::optional
)

add_webrtc_object("rtc_base_rtc_task_queue" ${WEBRTC_RTC_BASE_IDE_FOLDER}
    "${WEBRTC_RTC_BASE_DIR}/task_queue.cc"
    "${WEBRTC_RTC_BASE_DIR}/task_queue.h"
)
target_link_libraries("rtc_base_rtc_task_queue"
    absl::optional
)

add_webrtc_object("rtc_base_stringutils" ${WEBRTC_RTC_BASE_IDE_FOLDER}
    "${WEBRTC_RTC_BASE_DIR}/string_encode.cc"
    "${WEBRTC_RTC_BASE_DIR}/string_encode.h"
    "${WEBRTC_RTC_BASE_DIR}/string_to_number.cc"
    "${WEBRTC_RTC_BASE_DIR}/string_to_number.h"
    "${WEBRTC_RTC_BASE_DIR}/string_utils.cc"
    "${WEBRTC_RTC_BASE_DIR}/string_utils.h"
    "${WEBRTC_RTC_BASE_DIR}/strings/string_builder.cc"
    "${WEBRTC_RTC_BASE_DIR}/strings/string_builder.h"
    "${WEBRTC_RTC_BASE_DIR}/strings/string_format.cc"
    "${WEBRTC_RTC_BASE_DIR}/strings/string_format.h"
)
target_link_libraries("rtc_base_stringutils"
    absl::optional
)

add_webrtc_object("rtc_base_platform_thread_types" ${WEBRTC_RTC_BASE_IDE_FOLDER}
    "${WEBRTC_RTC_BASE_DIR}/platform_thread_types.cc"
    "${WEBRTC_RTC_BASE_DIR}/platform_thread_types.h"
)


add_webrtc_object("rtc_base_criticalsection" ${WEBRTC_RTC_BASE_IDE_FOLDER}
    "${WEBRTC_RTC_BASE_DIR}/deprecated/recursive_critical_section.cc"
    "${WEBRTC_RTC_BASE_DIR}/deprecated/recursive_critical_section.h"
)
target_link_libraries("rtc_base_criticalsection"
    absl::optional
)

add_webrtc_object("rtc_base_timeutils" ${WEBRTC_RTC_BASE_IDE_FOLDER}
    "${WEBRTC_RTC_BASE_DIR}/time_utils.cc"
    "${WEBRTC_RTC_BASE_DIR}/time_utils.h"
)
target_link_libraries("rtc_base_timeutils"
    absl::optional
)

add_webrtc_object("rtc_base_platform_thread" ${WEBRTC_RTC_BASE_IDE_FOLDER}
    "${WEBRTC_RTC_BASE_DIR}/platform_thread.cc"
    "${WEBRTC_RTC_BASE_DIR}/platform_thread.h"
)
target_link_libraries("rtc_base_platform_thread"
    absl::optional
)

add_webrtc_object("rtc_base_logging" ${WEBRTC_RTC_BASE_IDE_FOLDER}
    "${WEBRTC_RTC_BASE_DIR}/logging.cc"
    "${WEBRTC_RTC_BASE_DIR}/logging.h"
)
target_link_libraries("rtc_base_logging"
    absl::optional
    "rtc_base_checks"
    "rtc_base_criticalsection"
    "rtc_base_platform_thread_types"
    "rtc_base_stringutils"
    "rtc_base_timeutils"
)

add_webrtc_object("rtc_base_rtc_base_approved" ${WEBRTC_RTC_BASE_IDE_FOLDER}
    #rtc_base_approved
    "${WEBRTC_RTC_BASE_DIR}/bind.h"
    "${WEBRTC_RTC_BASE_DIR}/bit_buffer.cc"
    "${WEBRTC_RTC_BASE_DIR}/bit_buffer.h"
    "${WEBRTC_RTC_BASE_DIR}/buffer.h"
    "${WEBRTC_RTC_BASE_DIR}/buffer_queue.cc"
    "${WEBRTC_RTC_BASE_DIR}/buffer_queue.h"
    "${WEBRTC_RTC_BASE_DIR}/byte_buffer.cc"
    "${WEBRTC_RTC_BASE_DIR}/byte_buffer.h"
    "${WEBRTC_RTC_BASE_DIR}/byte_order.h"
    "${WEBRTC_RTC_BASE_DIR}/copy_on_write_buffer.cc"
    "${WEBRTC_RTC_BASE_DIR}/copy_on_write_buffer.h"
    "${WEBRTC_RTC_BASE_DIR}/event_tracer.cc"
    "${WEBRTC_RTC_BASE_DIR}/event_tracer.h"
    "${WEBRTC_RTC_BASE_DIR}/location.cc"
    "${WEBRTC_RTC_BASE_DIR}/location.h"
    "${WEBRTC_RTC_BASE_DIR}/message_buffer_reader.h"
    "${WEBRTC_RTC_BASE_DIR}/numerics/histogram_percentile_counter.cc"
    "${WEBRTC_RTC_BASE_DIR}/numerics/histogram_percentile_counter.h"
    "${WEBRTC_RTC_BASE_DIR}/numerics/mod_ops.h"
    "${WEBRTC_RTC_BASE_DIR}/numerics/moving_max_counter.h"
    "${WEBRTC_RTC_BASE_DIR}/numerics/sample_counter.cc"
    "${WEBRTC_RTC_BASE_DIR}/numerics/sample_counter.h"
    "${WEBRTC_RTC_BASE_DIR}/one_time_event.h"
    "${WEBRTC_RTC_BASE_DIR}/race_checker.cc"
    "${WEBRTC_RTC_BASE_DIR}/race_checker.h"
    "${WEBRTC_RTC_BASE_DIR}/random.cc"
    "${WEBRTC_RTC_BASE_DIR}/random.h"
    "${WEBRTC_RTC_BASE_DIR}/rate_statistics.cc"
    "${WEBRTC_RTC_BASE_DIR}/rate_statistics.h"
    "${WEBRTC_RTC_BASE_DIR}/rate_tracker.cc"
    "${WEBRTC_RTC_BASE_DIR}/rate_tracker.h"
    "${WEBRTC_RTC_BASE_DIR}/swap_queue.h"
    "${WEBRTC_RTC_BASE_DIR}/timestamp_aligner.cc"
    "${WEBRTC_RTC_BASE_DIR}/timestamp_aligner.h"
    "${WEBRTC_RTC_BASE_DIR}/trace_event.h"
    "${WEBRTC_RTC_BASE_DIR}/zero_memory.cc"
    "${WEBRTC_RTC_BASE_DIR}/zero_memory.h"
    #rtc_base_approved if win
    "${WEBRTC_RTC_BASE_DIR}/win/get_activation_factory.cc"
    "${WEBRTC_RTC_BASE_DIR}/win/get_activation_factory.h"
    "${WEBRTC_RTC_BASE_DIR}/win/hstring.cc"
    "${WEBRTC_RTC_BASE_DIR}/win/hstring.h"
    "${WEBRTC_RTC_BASE_DIR}/win/scoped_com_initializer.cc"
    "${WEBRTC_RTC_BASE_DIR}/win/scoped_com_initializer.h"
    "${WEBRTC_RTC_BASE_DIR}/win/windows_version.cc"
    "${WEBRTC_RTC_BASE_DIR}/win/windows_version.h"
)
target_link_libraries("rtc_base_rtc_base_approved"
    absl::optional
)

add_webrtc_object("rtc_base" ${WEBRTC_RTC_BASE_IDE_FOLDER}
    "${WEBRTC_RTC_BASE_DIR}/async_invoker.cc"
    "${WEBRTC_RTC_BASE_DIR}/async_invoker.h"
    "${WEBRTC_RTC_BASE_DIR}/async_invoker_inl.h"
    "${WEBRTC_RTC_BASE_DIR}/async_packet_socket.cc"
    "${WEBRTC_RTC_BASE_DIR}/async_packet_socket.h"
    "${WEBRTC_RTC_BASE_DIR}/async_resolver_interface.cc"
    "${WEBRTC_RTC_BASE_DIR}/async_resolver_interface.h"
    "${WEBRTC_RTC_BASE_DIR}/async_socket.cc"
    "${WEBRTC_RTC_BASE_DIR}/async_socket.h"
    "${WEBRTC_RTC_BASE_DIR}/async_tcp_socket.cc"
    "${WEBRTC_RTC_BASE_DIR}/async_tcp_socket.h"
    "${WEBRTC_RTC_BASE_DIR}/async_udp_socket.cc"
    "${WEBRTC_RTC_BASE_DIR}/async_udp_socket.h"
    "${WEBRTC_RTC_BASE_DIR}/crc32.cc"
    "${WEBRTC_RTC_BASE_DIR}/crc32.h"
    "${WEBRTC_RTC_BASE_DIR}/crypt_string.cc"
    "${WEBRTC_RTC_BASE_DIR}/crypt_string.h"
    "${WEBRTC_RTC_BASE_DIR}/data_rate_limiter.cc"
    "${WEBRTC_RTC_BASE_DIR}/data_rate_limiter.h"
    "${WEBRTC_RTC_BASE_DIR}/deprecated/signal_thread.cc"
    "${WEBRTC_RTC_BASE_DIR}/deprecated/signal_thread.h"
    "${WEBRTC_RTC_BASE_DIR}/dscp.h"
    "${WEBRTC_RTC_BASE_DIR}/file_rotating_stream.cc"
    "${WEBRTC_RTC_BASE_DIR}/file_rotating_stream.h"
    "${WEBRTC_RTC_BASE_DIR}/helpers.cc"
    "${WEBRTC_RTC_BASE_DIR}/helpers.h"
    "${WEBRTC_RTC_BASE_DIR}/http_common.cc"
    "${WEBRTC_RTC_BASE_DIR}/http_common.h"
    "${WEBRTC_RTC_BASE_DIR}/ip_address.cc"
    "${WEBRTC_RTC_BASE_DIR}/ip_address.h"
    "${WEBRTC_RTC_BASE_DIR}/keep_ref_until_done.h"
    "${WEBRTC_RTC_BASE_DIR}/mdns_responder_interface.h"
    "${WEBRTC_RTC_BASE_DIR}/message_digest.cc"
    "${WEBRTC_RTC_BASE_DIR}/message_digest.h"
    "${WEBRTC_RTC_BASE_DIR}/message_handler.cc"
    "${WEBRTC_RTC_BASE_DIR}/message_handler.h"
    "${WEBRTC_RTC_BASE_DIR}/net_helper.cc"
    "${WEBRTC_RTC_BASE_DIR}/net_helper.h"
    "${WEBRTC_RTC_BASE_DIR}/net_helpers.cc"
    "${WEBRTC_RTC_BASE_DIR}/net_helpers.h"
    "${WEBRTC_RTC_BASE_DIR}/network.cc"
    "${WEBRTC_RTC_BASE_DIR}/network.h"
    "${WEBRTC_RTC_BASE_DIR}/network_constants.cc"
    "${WEBRTC_RTC_BASE_DIR}/network_constants.h"
    "${WEBRTC_RTC_BASE_DIR}/network_monitor.cc"
    "${WEBRTC_RTC_BASE_DIR}/network_monitor.h"
    "${WEBRTC_RTC_BASE_DIR}/network_monitor_factory.cc"
    "${WEBRTC_RTC_BASE_DIR}/network_monitor_factory.h"
    "${WEBRTC_RTC_BASE_DIR}/network_route.cc"
    "${WEBRTC_RTC_BASE_DIR}/network_route.h"
    "${WEBRTC_RTC_BASE_DIR}/null_socket_server.cc"
    "${WEBRTC_RTC_BASE_DIR}/null_socket_server.h"
    "${WEBRTC_RTC_BASE_DIR}/openssl.h"
    "${WEBRTC_RTC_BASE_DIR}/openssl_adapter.cc"
    "${WEBRTC_RTC_BASE_DIR}/openssl_adapter.h"
    "${WEBRTC_RTC_BASE_DIR}/openssl_certificate.cc"
    "${WEBRTC_RTC_BASE_DIR}/openssl_certificate.h"
    "${WEBRTC_RTC_BASE_DIR}/openssl_digest.cc"
    "${WEBRTC_RTC_BASE_DIR}/openssl_digest.h"
    "${WEBRTC_RTC_BASE_DIR}/openssl_identity.cc"
    "${WEBRTC_RTC_BASE_DIR}/openssl_identity.h"
    "${WEBRTC_RTC_BASE_DIR}/openssl_session_cache.cc"
    "${WEBRTC_RTC_BASE_DIR}/openssl_session_cache.h"
    "${WEBRTC_RTC_BASE_DIR}/openssl_stream_adapter.cc"
    "${WEBRTC_RTC_BASE_DIR}/openssl_stream_adapter.h"
    "${WEBRTC_RTC_BASE_DIR}/openssl_utility.cc"
    "${WEBRTC_RTC_BASE_DIR}/openssl_utility.h"
    "${WEBRTC_RTC_BASE_DIR}/physical_socket_server.cc"
    "${WEBRTC_RTC_BASE_DIR}/physical_socket_server.h"
    "${WEBRTC_RTC_BASE_DIR}/proxy_info.cc"
    "${WEBRTC_RTC_BASE_DIR}/proxy_info.h"
    "${WEBRTC_RTC_BASE_DIR}/rtc_certificate.cc"
    "${WEBRTC_RTC_BASE_DIR}/rtc_certificate.h"
    "${WEBRTC_RTC_BASE_DIR}/rtc_certificate_generator.cc"
    "${WEBRTC_RTC_BASE_DIR}/rtc_certificate_generator.h"
    "${WEBRTC_RTC_BASE_DIR}/signal_thread.h"
    "${WEBRTC_RTC_BASE_DIR}/sigslot_repeater.h"
    "${WEBRTC_RTC_BASE_DIR}/socket.cc"
    "${WEBRTC_RTC_BASE_DIR}/socket.h"
    "${WEBRTC_RTC_BASE_DIR}/socket_adapters.cc"
    "${WEBRTC_RTC_BASE_DIR}/socket_adapters.h"
    "${WEBRTC_RTC_BASE_DIR}/socket_address.cc"
    "${WEBRTC_RTC_BASE_DIR}/socket_address.h"
    "${WEBRTC_RTC_BASE_DIR}/socket_address_pair.cc"
    "${WEBRTC_RTC_BASE_DIR}/socket_address_pair.h"
    "${WEBRTC_RTC_BASE_DIR}/socket_factory.h"
    "${WEBRTC_RTC_BASE_DIR}/socket_server.h"
    "${WEBRTC_RTC_BASE_DIR}/ssl_adapter.cc"
    "${WEBRTC_RTC_BASE_DIR}/ssl_adapter.h"
    "${WEBRTC_RTC_BASE_DIR}/ssl_certificate.cc"
    "${WEBRTC_RTC_BASE_DIR}/ssl_certificate.h"
    "${WEBRTC_RTC_BASE_DIR}/ssl_fingerprint.cc"
    "${WEBRTC_RTC_BASE_DIR}/ssl_fingerprint.h"
    "${WEBRTC_RTC_BASE_DIR}/ssl_identity.cc"
    "${WEBRTC_RTC_BASE_DIR}/ssl_identity.h"
    "${WEBRTC_RTC_BASE_DIR}/ssl_stream_adapter.cc"
    "${WEBRTC_RTC_BASE_DIR}/ssl_stream_adapter.h"
    "${WEBRTC_RTC_BASE_DIR}/stream.cc"
    "${WEBRTC_RTC_BASE_DIR}/stream.h"
    "${WEBRTC_RTC_BASE_DIR}/thread.cc"
    "${WEBRTC_RTC_BASE_DIR}/thread.h"
    "${WEBRTC_RTC_BASE_DIR}/thread_message.h"
    "${WEBRTC_RTC_BASE_DIR}/unique_id_generator.cc"
    "${WEBRTC_RTC_BASE_DIR}/unique_id_generator.h"


    #deprecation"
    "${WEBRTC_RTC_BASE_DIR}/deprecation.h"
    #macromagic
    "${WEBRTC_RTC_BASE_DIR}/arraysize.h"
    "${WEBRTC_RTC_BASE_DIR}/constructor_magic.h"
    "${WEBRTC_RTC_BASE_DIR}/format_macros.h"
    "${WEBRTC_RTC_BASE_DIR}/thread_annotations.h"
    #atomicops
    "${WEBRTC_RTC_BASE_DIR}/atomic_ops.h"
    #safe_compare
    "${WEBRTC_RTC_BASE_DIR}/numerics/safe_compare.h"
    #type_traits
    "${WEBRTC_RTC_BASE_DIR}/type_traits.h"

    #refcount"
    "${WEBRTC_RTC_BASE_DIR}/ref_count.h"
    "${WEBRTC_RTC_BASE_DIR}/ref_counted_object.h"
    "${WEBRTC_RTC_BASE_DIR}/ref_counter.h"
    #rtc_event"
    #"${WEBRTC_RTC_BASE_DIR}/../../webrtc_overrides/rtc_base/event.cc"
    #"${WEBRTC_RTC_BASE_DIR}/../../webrtc_overrides/rtc_base/event.h"
    #safe_conversions"
    "${WEBRTC_RTC_BASE_DIR}/numerics/safe_conversions.h"
    "${WEBRTC_RTC_BASE_DIR}/numerics/safe_conversions_impl.h"
    #thread_checker"
    "${WEBRTC_RTC_BASE_DIR}/thread_checker.h"
)

target_link_libraries("rtc_base"
    PRIVATE
        "rtc_base_checks"
        "rtc_base_rtc_task_queue"
        "rtc_base_rtc_stringutils"
        "absl::optional"
        "OpenSSL::SSL"
        "OpenSSL::Crypto"
)


#add_library(webrtc::rtc_base ALIAS "${WEBRTC_COMPONENT_PREFIX}rtc_base")