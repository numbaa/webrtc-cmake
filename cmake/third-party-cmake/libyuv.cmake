set(LIB_YUV "yuv")
set(LIB_YUV_ROOT "${THIRD_PARTY_DIR}/libyuv")
add_library(${LIB_YUV} STATIC
    # Headers
    "${LIB_YUV_ROOT}/include/libyuv.h"
    "${LIB_YUV_ROOT}/include/libyuv/basic_types.h"
    "${LIB_YUV_ROOT}/include/libyuv/compare.h"
    "${LIB_YUV_ROOT}/include/libyuv/convert.h"
    "${LIB_YUV_ROOT}/include/libyuv/convert_argb.h"
    "${LIB_YUV_ROOT}/include/libyuv/convert_from.h"
    "${LIB_YUV_ROOT}/include/libyuv/convert_from_argb.h"
    "${LIB_YUV_ROOT}/include/libyuv/cpu_id.h"
    "${LIB_YUV_ROOT}/include/libyuv/mjpeg_decoder.h"
    "${LIB_YUV_ROOT}/include/libyuv/planar_functions.h"
    "${LIB_YUV_ROOT}/include/libyuv/rotate.h"
    "${LIB_YUV_ROOT}/include/libyuv/rotate_argb.h"
    "${LIB_YUV_ROOT}/include/libyuv/rotate_row.h"
    "${LIB_YUV_ROOT}/include/libyuv/row.h"
    "${LIB_YUV_ROOT}/include/libyuv/scale.h"
    "${LIB_YUV_ROOT}/include/libyuv/scale_argb.h"
    "${LIB_YUV_ROOT}/include/libyuv/scale_row.h"
    "${LIB_YUV_ROOT}/include/libyuv/scale_uv.h"
    "${LIB_YUV_ROOT}/include/libyuv/version.h"
    "${LIB_YUV_ROOT}/include/libyuv/video_common.h"

    # Source Files
    "${LIB_YUV_ROOT}/source/compare.cc"
    "${LIB_YUV_ROOT}/source/compare_common.cc"
    "${LIB_YUV_ROOT}/source/compare_gcc.cc"
    "${LIB_YUV_ROOT}/source/compare_win.cc"
    "${LIB_YUV_ROOT}/source/convert.cc"
    "${LIB_YUV_ROOT}/source/convert_argb.cc"
    "${LIB_YUV_ROOT}/source/convert_from.cc"
    "${LIB_YUV_ROOT}/source/convert_from_argb.cc"
    "${LIB_YUV_ROOT}/source/convert_jpeg.cc"
    "${LIB_YUV_ROOT}/source/convert_to_argb.cc"
    "${LIB_YUV_ROOT}/source/convert_to_i420.cc"
    "${LIB_YUV_ROOT}/source/cpu_id.cc"
    "${LIB_YUV_ROOT}/source/mjpeg_decoder.cc"
    "${LIB_YUV_ROOT}/source/mjpeg_validate.cc"
    "${LIB_YUV_ROOT}/source/planar_functions.cc"
    "${LIB_YUV_ROOT}/source/rotate.cc"
    "${LIB_YUV_ROOT}/source/rotate_any.cc"
    "${LIB_YUV_ROOT}/source/rotate_argb.cc"
    "${LIB_YUV_ROOT}/source/rotate_common.cc"
    "${LIB_YUV_ROOT}/source/rotate_gcc.cc"
    "${LIB_YUV_ROOT}/source/rotate_win.cc"
    "${LIB_YUV_ROOT}/source/row_any.cc"
    "${LIB_YUV_ROOT}/source/row_common.cc"
    "${LIB_YUV_ROOT}/source/row_gcc.cc"
    "${LIB_YUV_ROOT}/source/row_win.cc"
    "${LIB_YUV_ROOT}/source/scale.cc"
    "${LIB_YUV_ROOT}/source/scale_any.cc"
    "${LIB_YUV_ROOT}/source/scale_argb.cc"
    "${LIB_YUV_ROOT}/source/scale_common.cc"
    "${LIB_YUV_ROOT}/source/scale_gcc.cc"
    "${LIB_YUV_ROOT}/source/scale_uv.cc"
    "${LIB_YUV_ROOT}/source/scale_win.cc"
    "${LIB_YUV_ROOT}/source/video_common.cc"
)
set_target_properties(${LIB_YUV} PROPERTIES FOLDER ${LIB_YUV_ROOT})

target_include_directories(${LIB_YUV}
   PUBLIC
      "${LIB_YUV_ROOT}/include"
)