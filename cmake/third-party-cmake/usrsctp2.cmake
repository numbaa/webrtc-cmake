set(USRSCTP_ROOT "${THIRD_PARTY_DIR}/usrsctp")
option(sctp_build_programs "Build example programs" 0)
add_subdirectory("${THIRD_PARTY_DIR}/usrsctp/usrsctplib")
set_target_properties("usrsctp" PROPERTIES FOLDER ${USRSCTP_ROOT})
set_target_properties("usrsctp-static" PROPERTIES FOLDER ${USRSCTP_ROOT})