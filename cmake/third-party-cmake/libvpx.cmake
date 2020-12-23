set(LIB_VPX "vpx")
set(LIB_VPX_ROOT "${THIRD_PARTY_DIR}/libvpx")
add_library(${LIB_VPX} STATIC


)
target_include_directories(${LIB_VPX}
    PUBLIC
        "${LIB_VPX_ROOT}/source/config"
        "${LIB_VPX_ROOT}/source/config/win/x64"
        "${LIB_VPX_ROOT}/source/libvpx"
)