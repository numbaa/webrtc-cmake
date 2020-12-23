set(PFFFT "pffft")
set(PFFFT_ROOT "${THIRD_PARTY_DIR}/pffft")
add_library(${PFFFT} STATIC
)

target_include_directories(${PFFFT}
   PUBLIC
      "${PFFFT_ROOT}"
      "${PFFFT_ROOT}/config"
      "${PFFFT_ROOT}/include"
)