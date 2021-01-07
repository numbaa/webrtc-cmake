set(LIB_OPENSSL "openssl")
set(LIB_OPENSSL_ROOT "${THIRD_PARTY_DIR}/openssl")
add_library(${LIB_OPENSSL} STATIC IMPORTED)
set_target_properties(${LIB_OPENSSL} PROPERTIES FOLDER ${LIB_OPENSSL_ROOT})
set_target_properties(${LIB_OPENSSL} PROPERTIES
    IMPORTED_LOCATION "${LIB_OPENSSL_ROOT}/lib/libcrypto.lib"
)
set_target_properties(${LIB_OPENSSL} PROPERTIES
    IMPORTED_LOCATION "${LIB_OPENSSL_ROOT}/lib/libssl.lib"
)
set_target_properties(${LIB_OPENSSL} PROPERTIES
    INCLUDE_DIRECTORIES "${LIB_OPENSSL_ROOT}/include"
)
target_include_directories(${LIB_OPENSSL}
    INTERFACE
        "${LIB_OPENSSL_ROOT}/include"
)