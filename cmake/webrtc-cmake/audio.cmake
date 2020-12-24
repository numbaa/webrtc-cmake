set(WEBRTC_AUDIO_DIR "${WEBRTC_SOURCE_DIR}/audio")

add_library("${WEBRTC_COMPONENT_PREFIX}audio" OBJECT
    "${WEBRTC_AUDIO_DIR}/audio_level.cc"
    "${WEBRTC_AUDIO_DIR}/audio_level.h"
    "${WEBRTC_AUDIO_DIR}/audio_receive_stream.cc"
    "${WEBRTC_AUDIO_DIR}/audio_receive_stream.h"
    "${WEBRTC_AUDIO_DIR}/audio_send_stream.cc"
    "${WEBRTC_AUDIO_DIR}/audio_send_stream.h"
    "${WEBRTC_AUDIO_DIR}/audio_state.cc"
    "${WEBRTC_AUDIO_DIR}/audio_state.h"
    "${WEBRTC_AUDIO_DIR}/audio_transport_impl.cc"
    "${WEBRTC_AUDIO_DIR}/audio_transport_impl.h"
    "${WEBRTC_AUDIO_DIR}/channel_receive.cc"
    "${WEBRTC_AUDIO_DIR}/channel_receive.h"
    "${WEBRTC_AUDIO_DIR}/channel_receive_frame_transformer_delegate.cc"
    "${WEBRTC_AUDIO_DIR}/channel_receive_frame_transformer_delegate.h"
    "${WEBRTC_AUDIO_DIR}/channel_send.cc"
    "${WEBRTC_AUDIO_DIR}/channel_send.h"
    "${WEBRTC_AUDIO_DIR}/channel_send_frame_transformer_delegate.cc"
    "${WEBRTC_AUDIO_DIR}/channel_send_frame_transformer_delegate.h"
    "${WEBRTC_AUDIO_DIR}/conversion.h"
    "${WEBRTC_AUDIO_DIR}/null_audio_poller.cc"
    "${WEBRTC_AUDIO_DIR}/null_audio_poller.h"
    "${WEBRTC_AUDIO_DIR}/remix_resample.cc"
    "${WEBRTC_AUDIO_DIR}/remix_resample.h"
)

set_target_properties("${WEBRTC_COMPONENT_PREFIX}audio" PROPERTIES FOLDER "audio")


#add_library(webrtc::audio ALIAS "${WEBRTC_COMPONENT_PREFIX}audio")