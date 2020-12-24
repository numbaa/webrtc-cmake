set(USRSCTP "usrsctp")
set(USRSCTP_ROOT "${THIRD_PARTY_DIR}/usrsctp")
add_library(${USRSCTP} STATIC
    "${USRSCTP_ROOT}/usrsctplib/usrsctplib/netinet/sctp.h"
    "${USRSCTP_ROOT}/usrsctplib/usrsctplib/netinet/sctp_asconf.c"
    "${USRSCTP_ROOT}/usrsctplib/usrsctplib/netinet/sctp_asconf.h"
    "${USRSCTP_ROOT}/usrsctplib/usrsctplib/netinet/sctp_auth.c"
    "${USRSCTP_ROOT}/usrsctplib/usrsctplib/netinet/sctp_auth.h"
    "${USRSCTP_ROOT}/usrsctplib/usrsctplib/netinet/sctp_bsd_addr.c"
    "${USRSCTP_ROOT}/usrsctplib/usrsctplib/netinet/sctp_bsd_addr.h"
    "${USRSCTP_ROOT}/usrsctplib/usrsctplib/netinet/sctp_callout.c"
    "${USRSCTP_ROOT}/usrsctplib/usrsctplib/netinet/sctp_callout.h"
    "${USRSCTP_ROOT}/usrsctplib/usrsctplib/netinet/sctp_cc_functions.c"
    "${USRSCTP_ROOT}/usrsctplib/usrsctplib/netinet/sctp_constants.h"
    "${USRSCTP_ROOT}/usrsctplib/usrsctplib/netinet/sctp_crc32.c"
    "${USRSCTP_ROOT}/usrsctplib/usrsctplib/netinet/sctp_crc32.h"
    "${USRSCTP_ROOT}/usrsctplib/usrsctplib/netinet/sctp_header.h"
    "${USRSCTP_ROOT}/usrsctplib/usrsctplib/netinet/sctp_indata.c"
    "${USRSCTP_ROOT}/usrsctplib/usrsctplib/netinet/sctp_indata.h"
    "${USRSCTP_ROOT}/usrsctplib/usrsctplib/netinet/sctp_input.c"
    "${USRSCTP_ROOT}/usrsctplib/usrsctplib/netinet/sctp_input.h"
    "${USRSCTP_ROOT}/usrsctplib/usrsctplib/netinet/sctp_lock_userspace.h"
    "${USRSCTP_ROOT}/usrsctplib/usrsctplib/netinet/sctp_os.h"
    "${USRSCTP_ROOT}/usrsctplib/usrsctplib/netinet/sctp_os_userspace.h"
    "${USRSCTP_ROOT}/usrsctplib/usrsctplib/netinet/sctp_output.c"
    "${USRSCTP_ROOT}/usrsctplib/usrsctplib/netinet/sctp_output.h"
    "${USRSCTP_ROOT}/usrsctplib/usrsctplib/netinet/sctp_pcb.c"
    "${USRSCTP_ROOT}/usrsctplib/usrsctplib/netinet/sctp_pcb.h"
    "${USRSCTP_ROOT}/usrsctplib/usrsctplib/netinet/sctp_peeloff.c"
    "${USRSCTP_ROOT}/usrsctplib/usrsctplib/netinet/sctp_peeloff.h"
    "${USRSCTP_ROOT}/usrsctplib/usrsctplib/netinet/sctp_process_lock.h"
    "${USRSCTP_ROOT}/usrsctplib/usrsctplib/netinet/sctp_sha1.c"
    "${USRSCTP_ROOT}/usrsctplib/usrsctplib/netinet/sctp_sha1.h"
    "${USRSCTP_ROOT}/usrsctplib/usrsctplib/netinet/sctp_ss_functions.c"
    "${USRSCTP_ROOT}/usrsctplib/usrsctplib/netinet/sctp_structs.h"
    "${USRSCTP_ROOT}/usrsctplib/usrsctplib/netinet/sctp_sysctl.c"
    "${USRSCTP_ROOT}/usrsctplib/usrsctplib/netinet/sctp_sysctl.h"
    "${USRSCTP_ROOT}/usrsctplib/usrsctplib/netinet/sctp_timer.c"
    "${USRSCTP_ROOT}/usrsctplib/usrsctplib/netinet/sctp_timer.h"
    "${USRSCTP_ROOT}/usrsctplib/usrsctplib/netinet/sctp_uio.h"
    "${USRSCTP_ROOT}/usrsctplib/usrsctplib/netinet/sctp_userspace.c"
    "${USRSCTP_ROOT}/usrsctplib/usrsctplib/netinet/sctp_usrreq.c"
    "${USRSCTP_ROOT}/usrsctplib/usrsctplib/netinet/sctp_var.h"
    "${USRSCTP_ROOT}/usrsctplib/usrsctplib/netinet/sctputil.c"
    "${USRSCTP_ROOT}/usrsctplib/usrsctplib/netinet/sctputil.h"
    "${USRSCTP_ROOT}/usrsctplib/usrsctplib/netinet6/sctp6_usrreq.c"
    "${USRSCTP_ROOT}/usrsctplib/usrsctplib/netinet6/sctp6_var.h"
    "${USRSCTP_ROOT}/usrsctplib/usrsctplib/user_atomic.h"
    "${USRSCTP_ROOT}/usrsctplib/usrsctplib/user_environment.c"
    "${USRSCTP_ROOT}/usrsctplib/usrsctplib/user_environment.h"
    "${USRSCTP_ROOT}/usrsctplib/usrsctplib/user_inpcb.h"
    "${USRSCTP_ROOT}/usrsctplib/usrsctplib/user_ip6_var.h"
    "${USRSCTP_ROOT}/usrsctplib/usrsctplib/user_ip_icmp.h"
    "${USRSCTP_ROOT}/usrsctplib/usrsctplib/user_malloc.h"
    "${USRSCTP_ROOT}/usrsctplib/usrsctplib/user_mbuf.c"
    "${USRSCTP_ROOT}/usrsctplib/usrsctplib/user_mbuf.h"
    "${USRSCTP_ROOT}/usrsctplib/usrsctplib/user_queue.h"
    "${USRSCTP_ROOT}/usrsctplib/usrsctplib/user_recv_thread.c"
    "${USRSCTP_ROOT}/usrsctplib/usrsctplib/user_recv_thread.h"
    "${USRSCTP_ROOT}/usrsctplib/usrsctplib/user_route.h"
    "${USRSCTP_ROOT}/usrsctplib/usrsctplib/user_socket.c"
    "${USRSCTP_ROOT}/usrsctplib/usrsctplib/user_socketvar.h"
    "${USRSCTP_ROOT}/usrsctplib/usrsctplib/user_uma.h"
    "${USRSCTP_ROOT}/usrsctplib/usrsctplib/usrsctp.h"
)
set_target_properties(${USRSCTP} PROPERTIES FOLDER ${USRSCTP_ROOT})

