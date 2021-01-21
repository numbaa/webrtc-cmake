set(WEBRTC_MEDIA_DIR "${WEBRTC_SOURCE_DIR}/media")
set(WEBRTC_MEDIA_IDE_FOLDER "src/media")

add_webrtc_object("rtc_media_base" ${WEBRTC_MEDIA_IDE_FOLDER}
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
    #rtc_h264_profile_id
    "${WEBRTC_MEDIA_DIR}/base/h264_profile_level_id.cc"
    "${WEBRTC_MEDIA_DIR}/base/h264_profile_level_id.h"
    #rtc_media_config
    "${WEBRTC_MEDIA_DIR}/base/media_config.h"
    #rtc_vp9_profile
    "${WEBRTC_MEDIA_DIR}/base/vp9_profile.cc"
    "${WEBRTC_MEDIA_DIR}/base/vp9_profile.h"
)
target_link_libraries("rtc_media_base"
    PRIVATE
        absl::optional
)

add_webrtc_object("rtc_constants" ${WEBRTC_MEDIA_IDE_FOLDER}
    "${WEBRTC_MEDIA_DIR}/engine/constants.cc"
    "${WEBRTC_MEDIA_DIR}/engine/constants.h"
)

add_webrtc_object("rtc_simulcast_encoder_adapter" ${WEBRTC_MEDIA_IDE_FOLDER}
    "${WEBRTC_MEDIA_DIR}/engine/simulcast_encoder_adapter.cc"
    "${WEBRTC_MEDIA_DIR}/engine/simulcast_encoder_adapter.h"
)
target_link_libraries("rtc_simulcast_encoder_adapter"
    PRIVATE
        rtc_media_base
        absl::optional
)

add_webrtc_object("rtc_encoder_simulcast_proxy" ${WEBRTC_MEDIA_IDE_FOLDER}
    "${WEBRTC_MEDIA_DIR}/engine/encoder_simulcast_proxy.cc"
    "${WEBRTC_MEDIA_DIR}/engine/encoder_simulcast_proxy.h"
)
target_link_libraries("rtc_encoder_simulcast_proxy"
    PRIVATE
        rtc_simulcast_encoder_adapter
        absl::optional
)

add_webrtc_object("rtc_internal_video_codecs" ${WEBRTC_MEDIA_IDE_FOLDER}
    "${WEBRTC_MEDIA_DIR}/engine/fake_video_codec_factory.cc"
    "${WEBRTC_MEDIA_DIR}/engine/fake_video_codec_factory.h"
    "${WEBRTC_MEDIA_DIR}/engine/internal_decoder_factory.cc"
    "${WEBRTC_MEDIA_DIR}/engine/internal_decoder_factory.h"
    "${WEBRTC_MEDIA_DIR}/engine/internal_encoder_factory.cc"
    "${WEBRTC_MEDIA_DIR}/engine/internal_encoder_factory.h"
    "${WEBRTC_MEDIA_DIR}/engine/multiplex_codec_factory.cc"
    "${WEBRTC_MEDIA_DIR}/engine/multiplex_codec_factory.h"
)
target_link_libraries("rtc_internal_video_codecs"
    PRIVATE
        rtc_constants
        rtc_encoder_simulcast_proxy
        rtc_media_base
        rtc_simulcast_encoder_adapter
        absl::optional
        libaom_av1_decoder
)


add_webrtc_object("rtc_audio_video" ${WEBRTC_MEDIA_IDE_FOLDER}
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
target_link_libraries("rtc_audio_video"
    PRIVATE
        rtc_constants
        field_tral_base_config
        rtc_media_base
        absl::optional
        absl::strings
)


add_webrtc_object("rtc_media_engine_defaults" ${WEBRTC_MEDIA_IDE_FOLDER}
    "${WEBRTC_MEDIA_DIR}/engine/webrtc_media_engine_defaults.cc"
    "${WEBRTC_MEDIA_DIR}/engine/webrtc_media_engine_defaults.h"
)
target_link_libraries("rtc_media_engine_defaults"
    PRIVATE
        rtc_audio_video
        absl::optional
)


add_webrtc_object("rtc_data" ${WEBRTC_MEDIA_IDE_FOLDER}
    "${WEBRTC_MEDIA_DIR}/sctp/sctp_transport.cc"
    "${WEBRTC_MEDIA_DIR}/sctp/sctp_transport.h"
    "${WEBRTC_MEDIA_DIR}/sctp/sctp_transport_internal.h"
)
target_link_libraries("rtc_data"
    PRIVATE
        absl::optional
        rtc_media_base
        usrsctp-static
)


add_webrtc_object("rtc_media" ${WEBRTC_MEDIA_IDE_FOLDER}
    ${DUMMY_CPP}
)
target_link_libraries("rtc_media"
    PRIVATE
        rtc_audio_video
        rtc_data
)

add_custom_target("media")
add_dependencies("media"
    "rtc_media"
    "rtc_media_engine_defaults"
    "rtc_internal_video_codecs"
    "rtc_encoder_simulcast_proxy"
    "rtc_encoder_simulcast_proxy"
    "rtc_simulcast_encoder_adapter"
    "rtc_constants"
    "rtc_media_base"
)
set_target_properties("media" PROPERTIES FOLDER ${WEBRTC_MEDIA_IDE_FOLDER})

#add_library(webrtc::media ALIAS "${WEBRTC_COMPONENT_PREFIX}media")