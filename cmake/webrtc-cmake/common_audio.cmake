set(WEBRTC_COMMON_AUDIO_DIR "${WEBRTC_SOURCE_DIR}/common_audio")
set(WEBRTC_COMMON_AUDIO_IDE_FOLDER "src/common_audio")

add_webrtc_object("common_audio_c" ${WEBRTC_COMMON_AUDIO_IDE_FOLDER}
    "${WEBRTC_COMMON_AUDIO_DIR}/ring_buffer.c"
    "${WEBRTC_COMMON_AUDIO_DIR}/ring_buffer.h"
    "${WEBRTC_COMMON_AUDIO_DIR}/signal_processing/auto_corr_to_refl_coef.c"
    "${WEBRTC_COMMON_AUDIO_DIR}/signal_processing/auto_correlation.c"
    "${WEBRTC_COMMON_AUDIO_DIR}/signal_processing/complex_fft_tables.h"
    "${WEBRTC_COMMON_AUDIO_DIR}/signal_processing/copy_set_operations.c"
    "${WEBRTC_COMMON_AUDIO_DIR}/signal_processing/cross_correlation.c"
    "${WEBRTC_COMMON_AUDIO_DIR}/signal_processing/division_operations.c"
    "${WEBRTC_COMMON_AUDIO_DIR}/signal_processing/downsample_fast.c"
    "${WEBRTC_COMMON_AUDIO_DIR}/signal_processing/energy.c"
    "${WEBRTC_COMMON_AUDIO_DIR}/signal_processing/filter_ar.c"
    "${WEBRTC_COMMON_AUDIO_DIR}/signal_processing/filter_ma_fast_q12.c"
    "${WEBRTC_COMMON_AUDIO_DIR}/signal_processing/get_hanning_window.c"
    "${WEBRTC_COMMON_AUDIO_DIR}/signal_processing/get_scaling_square.c"
    "${WEBRTC_COMMON_AUDIO_DIR}/signal_processing/ilbc_specific_functions.c"
    "${WEBRTC_COMMON_AUDIO_DIR}/signal_processing/include/real_fft.h"
    "${WEBRTC_COMMON_AUDIO_DIR}/signal_processing/include/signal_processing_library.h"
    "${WEBRTC_COMMON_AUDIO_DIR}/signal_processing/include/spl_inl.h"
    "${WEBRTC_COMMON_AUDIO_DIR}/signal_processing/include/spl_inl_armv7.h"
    "${WEBRTC_COMMON_AUDIO_DIR}/signal_processing/levinson_durbin.c"
    "${WEBRTC_COMMON_AUDIO_DIR}/signal_processing/lpc_to_refl_coef.c"
    "${WEBRTC_COMMON_AUDIO_DIR}/signal_processing/min_max_operations.c"
    "${WEBRTC_COMMON_AUDIO_DIR}/signal_processing/randomization_functions.c"
    "${WEBRTC_COMMON_AUDIO_DIR}/signal_processing/real_fft.c"
    "${WEBRTC_COMMON_AUDIO_DIR}/signal_processing/refl_coef_to_lpc.c"
    "${WEBRTC_COMMON_AUDIO_DIR}/signal_processing/resample.c"
    "${WEBRTC_COMMON_AUDIO_DIR}/signal_processing/resample_48khz.c"
    "${WEBRTC_COMMON_AUDIO_DIR}/signal_processing/resample_by_2.c"
    "${WEBRTC_COMMON_AUDIO_DIR}/signal_processing/resample_by_2_internal.c"
    "${WEBRTC_COMMON_AUDIO_DIR}/signal_processing/resample_by_2_internal.h"
    "${WEBRTC_COMMON_AUDIO_DIR}/signal_processing/resample_fractional.c"
    "${WEBRTC_COMMON_AUDIO_DIR}/signal_processing/spl_init.c"
    "${WEBRTC_COMMON_AUDIO_DIR}/signal_processing/spl_inl.c"
    "${WEBRTC_COMMON_AUDIO_DIR}/signal_processing/spl_sqrt.c"
    "${WEBRTC_COMMON_AUDIO_DIR}/signal_processing/splitting_filter.c"
    "${WEBRTC_COMMON_AUDIO_DIR}/signal_processing/sqrt_of_one_minus_x_squared.c"
    "${WEBRTC_COMMON_AUDIO_DIR}/signal_processing/vector_scaling_operations.c"
    "${WEBRTC_COMMON_AUDIO_DIR}/vad/include/webrtc_vad.h"
    "${WEBRTC_COMMON_AUDIO_DIR}/vad/vad_core.c"
    "${WEBRTC_COMMON_AUDIO_DIR}/vad/vad_core.h"
    "${WEBRTC_COMMON_AUDIO_DIR}/vad/vad_filterbank.c"
    "${WEBRTC_COMMON_AUDIO_DIR}/vad/vad_filterbank.h"
    "${WEBRTC_COMMON_AUDIO_DIR}/vad/vad_gmm.c"
    "${WEBRTC_COMMON_AUDIO_DIR}/vad/vad_gmm.h"
    "${WEBRTC_COMMON_AUDIO_DIR}/vad/vad_sp.c"
    "${WEBRTC_COMMON_AUDIO_DIR}/vad/vad_sp.h"
    "${WEBRTC_COMMON_AUDIO_DIR}/vad/webrtc_vad.c"
    #common_audio_cc
    "${WEBRTC_COMMON_AUDIO_DIR}/signal_processing/dot_product_with_scale.cc"
    "${WEBRTC_COMMON_AUDIO_DIR}/signal_processing/dot_product_with_scale.h"
)
target_link_libraries("common_audio_c"
    PRIVATE
        absl::optional
)

add_webrtc_object("spl_sqrt_floor" ${WEBRTC_COMMON_AUDIO_IDE_FOLDER}
    "${WEBRTC_COMMON_AUDIO_DIR}/third_party/spl_sqrt_floor/spl_sqrt_floor.c"
    "${WEBRTC_COMMON_AUDIO_DIR}/third_party/spl_sqrt_floor/spl_sqrt_floor.h"
)
target_link_libraries("spl_sqrt_floor"
    PRIVATE
        common_audio_c
)

add_webrtc_object("common_audio" ${WEBRTC_COMMON_AUDIO_IDE_FOLDER}
    "${WEBRTC_COMMON_AUDIO_DIR}/audio_converter.cc"
    "${WEBRTC_COMMON_AUDIO_DIR}/audio_converter.h"
    "${WEBRTC_COMMON_AUDIO_DIR}/audio_util.cc"
    "${WEBRTC_COMMON_AUDIO_DIR}/channel_buffer.cc"
    "${WEBRTC_COMMON_AUDIO_DIR}/channel_buffer.h"
    "${WEBRTC_COMMON_AUDIO_DIR}/include/audio_util.h"
    "${WEBRTC_COMMON_AUDIO_DIR}/real_fourier.cc"
    "${WEBRTC_COMMON_AUDIO_DIR}/real_fourier.h"
    "${WEBRTC_COMMON_AUDIO_DIR}/real_fourier_ooura.cc"
    "${WEBRTC_COMMON_AUDIO_DIR}/real_fourier_ooura.h"
    "${WEBRTC_COMMON_AUDIO_DIR}/resampler/include/push_resampler.h"
    "${WEBRTC_COMMON_AUDIO_DIR}/resampler/include/resampler.h"
    "${WEBRTC_COMMON_AUDIO_DIR}/resampler/push_resampler.cc"
    "${WEBRTC_COMMON_AUDIO_DIR}/resampler/push_sinc_resampler.cc"
    "${WEBRTC_COMMON_AUDIO_DIR}/resampler/push_sinc_resampler.h"
    "${WEBRTC_COMMON_AUDIO_DIR}/resampler/resampler.cc"
    "${WEBRTC_COMMON_AUDIO_DIR}/resampler/sinc_resampler.cc"
    "${WEBRTC_COMMON_AUDIO_DIR}/smoothing_filter.cc"
    "${WEBRTC_COMMON_AUDIO_DIR}/smoothing_filter.h"
    "${WEBRTC_COMMON_AUDIO_DIR}/vad/include/vad.h"
    "${WEBRTC_COMMON_AUDIO_DIR}/vad/vad.cc"
    "${WEBRTC_COMMON_AUDIO_DIR}/wav_file.cc"
    "${WEBRTC_COMMON_AUDIO_DIR}/wav_file.h"
    "${WEBRTC_COMMON_AUDIO_DIR}/wav_header.cc"
    "${WEBRTC_COMMON_AUDIO_DIR}/wav_header.h"
    "${WEBRTC_COMMON_AUDIO_DIR}/window_generator.cc"
    "${WEBRTC_COMMON_AUDIO_DIR}/window_generator.h"
)
target_link_libraries("common_audio"
    PRIVATE
        absl::optional
        common_audio_c
        aligned_malloc
)


#add_library(webrtc::common_audio ALIAS "${WEBRTC_COMPONENT_PREFIX}common_audio")