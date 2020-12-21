set(LIB_SRTP "srtp")
set(LIB_SRTP_ROOT "${THIRD_PARTY_DIR}/libsrtp")
add_library(${LIB_SRTP} STATIC
   # includes
   "${LIB_SRTP_ROOT}/include/ekt.h"
   "${LIB_SRTP_ROOT}/include/srtp.h"
   
    # headers
   "${LIB_SRTP_ROOT}/crypto/include/aes.h"
   "${LIB_SRTP_ROOT}/crypto/include/aes_gcm_ossl.h"
   "${LIB_SRTP_ROOT}/crypto/include/aes_icm.h"
   "${LIB_SRTP_ROOT}/crypto/include/aes_icm_ossl.h"
   "${LIB_SRTP_ROOT}/crypto/include/alloc.h"
   "${LIB_SRTP_ROOT}/crypto/include/auth.h"
   "${LIB_SRTP_ROOT}/crypto/include/cipher.h"
   "${LIB_SRTP_ROOT}/crypto/include/cipher_types.h"
   "${LIB_SRTP_ROOT}/crypto/include/crypto_kernel.h"
   "${LIB_SRTP_ROOT}/crypto/include/crypto_types.h"
   "${LIB_SRTP_ROOT}/crypto/include/datatypes.h"
   "${LIB_SRTP_ROOT}/crypto/include/err.h"
   "${LIB_SRTP_ROOT}/crypto/include/integers.h"
   "${LIB_SRTP_ROOT}/crypto/include/key.h"
   "${LIB_SRTP_ROOT}/crypto/include/null_auth.h"
   "${LIB_SRTP_ROOT}/crypto/include/null_cipher.h"
   "${LIB_SRTP_ROOT}/crypto/include/rdb.h"
   "${LIB_SRTP_ROOT}/crypto/include/rdbx.h"
   "${LIB_SRTP_ROOT}/crypto/include/stat.h"
   "${LIB_SRTP_ROOT}/include/srtp_priv.h"
   "${LIB_SRTP_ROOT}/include/ut_sim.h"
   
    # sources
   "${LIB_SRTP_ROOT}/crypto/cipher/aes_gcm_ossl.c"
   "${LIB_SRTP_ROOT}/crypto/cipher/aes_icm_ossl.c"
   "${LIB_SRTP_ROOT}/crypto/cipher/cipher.c"
   "${LIB_SRTP_ROOT}/crypto/cipher/null_cipher.c"
   "${LIB_SRTP_ROOT}/crypto/hash/auth.c"
   "${LIB_SRTP_ROOT}/crypto/hash/hmac_ossl.c"
   "${LIB_SRTP_ROOT}/crypto/hash/null_auth.c"
   "${LIB_SRTP_ROOT}/crypto/kernel/alloc.c"
   "${LIB_SRTP_ROOT}/crypto/kernel/crypto_kernel.c"
   "${LIB_SRTP_ROOT}/crypto/kernel/err.c"
   "${LIB_SRTP_ROOT}/crypto/kernel/key.c"
   "${LIB_SRTP_ROOT}/crypto/math/datatypes.c"
   "${LIB_SRTP_ROOT}/crypto/math/stat.c"
   "${LIB_SRTP_ROOT}/crypto/replay/rdb.c"
   "${LIB_SRTP_ROOT}/crypto/replay/rdbx.c"
   "${LIB_SRTP_ROOT}/srtp/ekt.c"
   "${LIB_SRTP_ROOT}/srtp/srtp.c"
)

target_include_directories(${LIB_SRTP}
   PUBLIC
      "${LIB_SRTP_ROOT}"
      "${LIB_SRTP_ROOT}/config"
      "${LIB_SRTP_ROOT}/include"
)