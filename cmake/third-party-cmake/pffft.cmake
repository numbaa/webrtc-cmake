set(PFFFT "pffft")
set(PFFFT_ROOT "${THIRD_PARTY_DIR}/pffft")
add_library(${PFFFT} STATIC
   "${PFFFT_ROOT}/src/pffft.c"
   "${PFFFT_ROOT}/src/pffft.h"
)

target_include_directories(${PFFFT}
   PUBLIC
      "${PFFFT_ROOT}"
      "${PFFFT_ROOT}/config"
      "${PFFFT_ROOT}/include"
)