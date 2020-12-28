set(WEBRTC_MEDIA_DIR "${WEBRTC_SOURCE_DIR}/media")
set(WEBRTC_MEDIA_IDE_FOLDER "webrtc/media")

add_library("${WEBRTC_COMPONENT_PREFIX}rtc_media_base" OBJECT
    "${WEBRTC_MEDIA_DIR}/base/adapted_video_track_source.cc"
    "${WEBRTC_MEDIA_DIR}/base/adapted_video_track_source.h"
    "${WEBRTC_MEDIA_DIR}/base/audio_source.h"
    "${WEBRTC_MEDIA_DIR}/base/codec.cc"
    "${WEBRTC_MEDIA_DIR}/base/codec.h"
    "${WEBRTC_MEDIA_DIR}/base/delayable.h"
    "${WEBRTC_MEDIA_DIR}/base/media_channel.cc"
    "${WEBRTC_MEDIA_DIR}/base/media_channel.h"
    "${WEBRTC_MEDIA_DIR}/base/media_constants.cc"
    "${WEBRTC_MEDIA_DIR}/base/media_constants.h"
    "${WEBRTC_MEDIA_DIR}/base/media_engine.cc"
    "${WEBRTC_MEDIA_DIR}/base/media_engine.h"
    "${WEBRTC_MEDIA_DIR}/base/rid_description.cc"
    "${WEBRTC_MEDIA_DIR}/base/rid_description.h"
    "${WEBRTC_MEDIA_DIR}/base/rtp_data_engine.cc"
    "${WEBRTC_MEDIA_DIR}/base/rtp_data_engine.h"
    "${WEBRTC_MEDIA_DIR}/base/rtp_utils.cc"
    "${WEBRTC_MEDIA_DIR}/base/rtp_utils.h"
    "${WEBRTC_MEDIA_DIR}/base/stream_params.cc"
    "${WEBRTC_MEDIA_DIR}/base/stream_params.h"
    "${WEBRTC_MEDIA_DIR}/base/turn_utils.cc"
    "${WEBRTC_MEDIA_DIR}/base/turn_utils.h"
    "${WEBRTC_MEDIA_DIR}/base/video_adapter.cc"
    "${WEBRTC_MEDIA_DIR}/base/video_adapter.h"
    "${WEBRTC_MEDIA_DIR}/base/video_broadcaster.cc"
    "${WEBRTC_MEDIA_DIR}/base/video_broadcaster.h"
    "${WEBRTC_MEDIA_DIR}/base/video_common.cc"
    "${WEBRTC_MEDIA_DIR}/base/video_common.h"
    "${WEBRTC_MEDIA_DIR}/base/video_source_base.cc"
    "${WEBRTC_MEDIA_DIR}/base/video_source_base.h"
)
set_target_properties("${WEBRTC_COMPONENT_PREFIX}rtc_media_base" PROPERTIES FOLDER ${WEBRTC_MEDIA_IDE_FOLDER})


add_library("${WEBRTC_COMPONENT_PREFIX}rtc_constants" OBJECT
    "${WEBRTC_MEDIA_DIR}/engine/constants.cc"
    "${WEBRTC_MEDIA_DIR}/engine/constants.h"
)
set_target_properties("${WEBRTC_COMPONENT_PREFIX}rtc_constants" PROPERTIES FOLDER ${WEBRTC_MEDIA_IDE_FOLDER})

add_library("${WEBRTC_COMPONENT_PREFIX}rtc_simulcast_encoder_adapter" OBJECT
    "${WEBRTC_MEDIA_DIR}/engine/simulcast_encoder_adapter.cc"
    "${WEBRTC_MEDIA_DIR}/engine/simulcast_encoder_adapter.h"
)
set_target_properties("${WEBRTC_COMPONENT_PREFIX}rtc_simulcast_encoder_adapter" PROPERTIES FOLDER ${WEBRTC_MEDIA_IDE_FOLDER})

add_library("${WEBRTC_COMPONENT_PREFIX}rtc_encoder_simulcast_proxy" OBJECT
    "${WEBRTC_MEDIA_DIR}/engine/encoder_simulcast_proxy.cc"
    "${WEBRTC_MEDIA_DIR}/engine/encoder_simulcast_proxy.h"
)
set_target_properties("${WEBRTC_COMPONENT_PREFIX}rtc_encoder_simulcast_proxy" PROPERTIES FOLDER ${WEBRTC_MEDIA_IDE_FOLDER})

add_library("${WEBRTC_COMPONENT_PREFIX}rtc_internal_video_codecs" OBJECT
    "${WEBRTC_MEDIA_DIR}/engine/fake_video_codec_factory.cc"
    "${WEBRTC_MEDIA_DIR}/engine/fake_video_codec_factory.h"
    "${WEBRTC_MEDIA_DIR}/engine/internal_decoder_factory.cc"
    "${WEBRTC_MEDIA_DIR}/engine/internal_decoder_factory.h"
    "${WEBRTC_MEDIA_DIR}/engine/internal_encoder_factory.cc"
    "${WEBRTC_MEDIA_DIR}/engine/internal_encoder_factory.h"
    "${WEBRTC_MEDIA_DIR}/engine/multiplex_codec_factory.cc"
    "${WEBRTC_MEDIA_DIR}/engine/multiplex_codec_factory.h"
)
set_target_properties("${WEBRTC_COMPONENT_PREFIX}rtc_internal_video_codecs" PROPERTIES FOLDER ${WEBRTC_MEDIA_IDE_FOLDER})

add_library("${WEBRTC_COMPONENT_PREFIX}rtc_audio_video" OBJECT
    "${WEBRTC_MEDIA_DIR}/engine/adm_helpers.cc"
    "${WEBRTC_MEDIA_DIR}/engine/adm_helpers.h"
    "${WEBRTC_MEDIA_DIR}/engine/null_webrtc_video_engine.h"
    "${WEBRTC_MEDIA_DIR}/engine/payload_type_mapper.cc"
    "${WEBRTC_MEDIA_DIR}/engine/payload_type_mapper.h"
    "${WEBRTC_MEDIA_DIR}/engine/simulcast.cc"
    "${WEBRTC_MEDIA_DIR}/engine/simulcast.h"
    "${WEBRTC_MEDIA_DIR}/engine/unhandled_packets_buffer.cc"
    "${WEBRTC_MEDIA_DIR}/engine/unhandled_packets_buffer.h"
    "${WEBRTC_MEDIA_DIR}/engine/webrtc_media_engine.cc"
    "${WEBRTC_MEDIA_DIR}/engine/webrtc_media_engine.h"
    "${WEBRTC_MEDIA_DIR}/engine/webrtc_video_engine.cc"
    "${WEBRTC_MEDIA_DIR}/engine/webrtc_video_engine.h"
    "${WEBRTC_MEDIA_DIR}/engine/webrtc_voice_engine.cc"
    "${WEBRTC_MEDIA_DIR}/engine/webrtc_voice_engine.h"
)
set_target_properties("${WEBRTC_COMPONENT_PREFIX}rtc_audio_video" PROPERTIES FOLDER ${WEBRTC_MEDIA_IDE_FOLDER})

add_library("${WEBRTC_COMPONENT_PREFIX}rtc_media_engine_defaults" OBJECT
    "${WEBRTC_MEDIA_DIR}/engine/webrtc_media_engine_defaults.cc"
    "${WEBRTC_MEDIA_DIR}/engine/webrtc_media_engine_defaults.h"
)
set_target_properties("${WEBRTC_COMPONENT_PREFIX}rtc_media_engine_defaults" PROPERTIES FOLDER ${WEBRTC_MEDIA_IDE_FOLDER})

add_library("${WEBRTC_COMPONENT_PREFIX}rtc_data" OBJECT
    "${WEBRTC_MEDIA_DIR}/sctp/sctp_transport.cc"
    "${WEBRTC_MEDIA_DIR}/sctp/sctp_transport.h"
    "${WEBRTC_MEDIA_DIR}/sctp/sctp_transport_internal.h"
)
set_target_properties("${WEBRTC_COMPONENT_PREFIX}rtc_data" PROPERTIES FOLDER ${WEBRTC_MEDIA_IDE_FOLDER})


add_library("${WEBRTC_COMPONENT_PREFIX}rtc_media" OBJECT "dummy.cpp")
target_link_libraries("${WEBRTC_COMPONENT_PREFIX}rtc_media"
    "${WEBRTC_COMPONENT_PREFIX}rtc_audio_video"
    "${WEBRTC_COMPONENT_PREFIX}rtc_data"
)
set_target_properties("${WEBRTC_COMPONENT_PREFIX}rtc_media" PROPERTIES FOLDER ${WEBRTC_MEDIA_IDE_FOLDER})

add_custom_target("${WEBRTC_COMPONENT_PREFIX}media")
add_dependencies("${WEBRTC_COMPONENT_PREFIX}media"
    "${WEBRTC_COMPONENT_PREFIX}rtc_media"
    "${WEBRTC_COMPONENT_PREFIX}rtc_media_engine_defaults"
    "${WEBRTC_COMPONENT_PREFIX}rtc_internal_video_codecs"
    "${WEBRTC_COMPONENT_PREFIX}rtc_encoder_simulcast_proxy"
    "${WEBRTC_COMPONENT_PREFIX}rtc_encoder_simulcast_proxy"
    "${WEBRTC_COMPONENT_PREFIX}rtc_simulcast_encoder_adapter"
    "${WEBRTC_COMPONENT_PREFIX}rtc_constants"
    "${WEBRTC_COMPONENT_PREFIX}rtc_media_base"
)
set_target_properties("${WEBRTC_COMPONENT_PREFIX}media" PROPERTIES FOLDER ${WEBRTC_MEDIA_IDE_FOLDER})

#add_library(webrtc::media ALIAS "${WEBRTC_COMPONENT_PREFIX}media")