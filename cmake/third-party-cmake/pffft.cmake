set(LIB_SRTP "srtp")
set(LIB_SRTP_ROOT "${THIRD_PARTY_DIR}/libsrtp")
add_library(${LIB_SRTP} STATIC
)

target_include_directories(${LIB_SRTP}
   PUBLIC
      "${LIB_SRTP_ROOT}"
      "${LIB_SRTP_ROOT}/config"
      "${LIB_SRTP_ROOT}/include"
)