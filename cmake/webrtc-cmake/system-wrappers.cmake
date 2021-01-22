set(WEBRTC_SYSTEM_WRAPPERS_DIR "${WEBRTC_SOURCE_DIR}/system_wrappers")
set(WEBRTC_SYSTEM_WRAPPERS_IDE_FOLDER "src/system_wrappers")


add_webrtc_object("system_wrappers" ${WEBRTC_SYSTEM_WRAPPERS_IDE_FOLDER}
    #system_wrappers
    "${WEBRTC_SYSTEM_WRAPPERS_DIR}/include/clock.h"
    "${WEBRTC_SYSTEM_WRAPPERS_DIR}/include/cpu_features_wrapper.h"
    "${WEBRTC_SYSTEM_WRAPPERS_DIR}/include/cpu_info.h"
    "${WEBRTC_SYSTEM_WRAPPERS_DIR}/include/ntp_time.h"
    "${WEBRTC_SYSTEM_WRAPPERS_DIR}/include/rtp_to_ntp_estimator.h"
    "${WEBRTC_SYSTEM_WRAPPERS_DIR}/include/sleep.h"
    "${WEBRTC_SYSTEM_WRAPPERS_DIR}/source/clock.cc"
    "${WEBRTC_SYSTEM_WRAPPERS_DIR}/source/cpu_features.cc"
    "${WEBRTC_SYSTEM_WRAPPERS_DIR}/source/cpu_info.cc"
    "${WEBRTC_SYSTEM_WRAPPERS_DIR}/source/rtp_to_ntp_estimator.cc"
    "${WEBRTC_SYSTEM_WRAPPERS_DIR}/source/sleep.cc"
)
target_link_libraries("system_wrappers"
    absl::optional
    winmm
    rtc_base_rtc_base_approved
    field_trial
)

add_webrtc_object("field_trial" ${WEBRTC_SYSTEM_WRAPPERS_IDE_FOLDER}
    #field_trial
    "${WEBRTC_SYSTEM_WRAPPERS_DIR}/source/field_trial.cc"
    "${WEBRTC_SYSTEM_WRAPPERS_DIR}/include/field_trial.h"
)
target_link_libraries("field_trial"
    absl::strings
)

add_webrtc_object("metrics" ${WEBRTC_SYSTEM_WRAPPERS_IDE_FOLDER}
    #metrics
    "${WEBRTC_SYSTEM_WRAPPERS_DIR}/source/metrics.cc"
    "${WEBRTC_SYSTEM_WRAPPERS_DIR}/include/metrics.h"
)
target_link_libraries("metrics"
    rtc_base_checks
    rtc_base_rtc_base_approved
)