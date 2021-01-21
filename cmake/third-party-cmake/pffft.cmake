set(PFFFT "pffft")
set(PFFFT_ROOT "${THIRD_PARTY_DIR}/pffft")
add_library(${PFFFT} STATIC
   "${PFFFT_ROOT}/src/pffft.c"
   "${PFFFT_ROOT}/src/pffft.h"
)
set_target_properties(${PFFFT} PROPERTIES FOLDER ${PFFFT_ROOT})

target_compile_options(${PFFFT} PRIVATE
   "-D_USE_MATH_DEFINES"
)

target_include_directories(${PFFFT}
   PUBLIC
      "${PFFFT_ROOT}"
      "${PFFFT_ROOT}/config"
      "${PFFFT_ROOT}/include"
      "."
)