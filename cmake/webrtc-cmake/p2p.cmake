set(WEBRTC_P2P_DIR "${WEBRTC_SOURCE_DIR}/p2p")
set(WEBRTC_P2P_IDE_FOLDER "webrtc/p2p")

add_webrtc_object("p2p" ${WEBRTC_P2P_IDE_FOLDER}
    #rtc_p2p
    "${WEBRTC_P2P_DIR}/base/async_stun_tcp_socket.cc"
    "${WEBRTC_P2P_DIR}/base/async_stun_tcp_socket.h"
    "${WEBRTC_P2P_DIR}/base/basic_async_resolver_factory.cc"
    "${WEBRTC_P2P_DIR}/base/basic_async_resolver_factory.h"
    "${WEBRTC_P2P_DIR}/base/basic_ice_controller.cc"
    "${WEBRTC_P2P_DIR}/base/basic_ice_controller.h"
    "${WEBRTC_P2P_DIR}/base/basic_packet_socket_factory.cc"
    "${WEBRTC_P2P_DIR}/base/basic_packet_socket_factory.h"
    "${WEBRTC_P2P_DIR}/base/candidate_pair_interface.h"
    "${WEBRTC_P2P_DIR}/base/connection.cc"
    "${WEBRTC_P2P_DIR}/base/connection.h"
    "${WEBRTC_P2P_DIR}/base/connection_info.cc"
    "${WEBRTC_P2P_DIR}/base/connection_info.h"
    "${WEBRTC_P2P_DIR}/base/default_ice_transport_factory.cc"
    "${WEBRTC_P2P_DIR}/base/default_ice_transport_factory.h"
    "${WEBRTC_P2P_DIR}/base/dtls_transport.cc"
    "${WEBRTC_P2P_DIR}/base/dtls_transport.h"
    "${WEBRTC_P2P_DIR}/base/dtls_transport_factory.h"
    "${WEBRTC_P2P_DIR}/base/dtls_transport_internal.cc"
    "${WEBRTC_P2P_DIR}/base/dtls_transport_internal.h"
    "${WEBRTC_P2P_DIR}/base/ice_controller_factory_interface.h"
    "${WEBRTC_P2P_DIR}/base/ice_controller_interface.cc"
    "${WEBRTC_P2P_DIR}/base/ice_controller_interface.h"
    "${WEBRTC_P2P_DIR}/base/ice_credentials_iterator.cc"
    "${WEBRTC_P2P_DIR}/base/ice_credentials_iterator.h"
    "${WEBRTC_P2P_DIR}/base/ice_transport_internal.cc"
    "${WEBRTC_P2P_DIR}/base/ice_transport_internal.h"
    "${WEBRTC_P2P_DIR}/base/mdns_message.cc"
    "${WEBRTC_P2P_DIR}/base/mdns_message.h"
    "${WEBRTC_P2P_DIR}/base/p2p_constants.cc"
    "${WEBRTC_P2P_DIR}/base/p2p_constants.h"
    "${WEBRTC_P2P_DIR}/base/p2p_transport_channel.cc"
    "${WEBRTC_P2P_DIR}/base/p2p_transport_channel.h"
    "${WEBRTC_P2P_DIR}/base/p2p_transport_channel_ice_field_trials.h"
    "${WEBRTC_P2P_DIR}/base/packet_transport_internal.cc"
    "${WEBRTC_P2P_DIR}/base/packet_transport_internal.h"
    "${WEBRTC_P2P_DIR}/base/port.cc"
    "${WEBRTC_P2P_DIR}/base/port.h"
    "${WEBRTC_P2P_DIR}/base/port_allocator.cc"
    "${WEBRTC_P2P_DIR}/base/port_allocator.h"
    "${WEBRTC_P2P_DIR}/base/port_interface.cc"
    "${WEBRTC_P2P_DIR}/base/port_interface.h"
    "${WEBRTC_P2P_DIR}/base/pseudo_tcp.cc"
    "${WEBRTC_P2P_DIR}/base/pseudo_tcp.h"
    "${WEBRTC_P2P_DIR}/base/regathering_controller.cc"
    "${WEBRTC_P2P_DIR}/base/regathering_controller.h"
    "${WEBRTC_P2P_DIR}/base/stun_port.cc"
    "${WEBRTC_P2P_DIR}/base/stun_port.h"
    "${WEBRTC_P2P_DIR}/base/stun_request.cc"
    "${WEBRTC_P2P_DIR}/base/stun_request.h"
    "${WEBRTC_P2P_DIR}/base/tcp_port.cc"
    "${WEBRTC_P2P_DIR}/base/tcp_port.h"
    "${WEBRTC_P2P_DIR}/base/transport_description.cc"
    "${WEBRTC_P2P_DIR}/base/transport_description.h"
    "${WEBRTC_P2P_DIR}/base/transport_description_factory.cc"
    "${WEBRTC_P2P_DIR}/base/transport_description_factory.h"
    "${WEBRTC_P2P_DIR}/base/transport_info.h"
    "${WEBRTC_P2P_DIR}/base/turn_port.cc"
    "${WEBRTC_P2P_DIR}/base/turn_port.h"
    "${WEBRTC_P2P_DIR}/base/udp_port.h"
    "${WEBRTC_P2P_DIR}/client/basic_port_allocator.cc"
    "${WEBRTC_P2P_DIR}/client/basic_port_allocator.h"
    "${WEBRTC_P2P_DIR}/client/relay_port_factory_interface.h"
    "${WEBRTC_P2P_DIR}/client/turn_port_factory.cc"
    "${WEBRTC_P2P_DIR}/client/turn_port_factory.h"
    #libstunprober
    "${WEBRTC_P2P_DIR}/stunprober/stun_prober.cc"
    "${WEBRTC_P2P_DIR}/stunprober/stun_prober.h"
)
target_link_libraries("p2p"
    PRIVATE
        absl::optional
)

#add_library(webrtc::p2p ALIAS "${WEBRTC_COMPONENT_PREFIX}p2p")