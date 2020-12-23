set(WEBRTC_MODULES_DIR "${WEBRTC_SOURCE_DIR}/modules")

add_library("${WEBRTC_COMPONENT_PREFIX}modules_audio_coding" STATIC
    #audio_coding
    "${WEBRTC_MODULES_DIR}/audio_coding/acm2/acm_receiver.cc"
    "${WEBRTC_MODULES_DIR}/audio_coding/acm2/acm_receiver.h"
    "${WEBRTC_MODULES_DIR}/audio_coding/acm2/acm_remixing.cc"
    "${WEBRTC_MODULES_DIR}/audio_coding/acm2/acm_remixing.h"
    "${WEBRTC_MODULES_DIR}/audio_coding/acm2/acm_resampler.cc"
    "${WEBRTC_MODULES_DIR}/audio_coding/acm2/acm_resampler.h"
    "${WEBRTC_MODULES_DIR}/audio_coding/acm2/audio_coding_module.cc"
    "${WEBRTC_MODULES_DIR}/audio_coding/acm2/call_statistics.cc"
    "${WEBRTC_MODULES_DIR}/audio_coding/acm2/call_statistics.h"
    "${WEBRTC_MODULES_DIR}/audio_coding/include/audio_coding_module.h"

    #audio_coding_module_typedefs
    "${WEBRTC_MODULES_DIR}/audio_coding/include/audio_coding_module_typedefs.h"

    #default_neteq_factory
    "${WEBRTC_MODULES_DIR}/audio_coding/neteq/default_neteq_factory.cc"
    "${WEBRTC_MODULES_DIR}/audio_coding/neteq/default_neteq_factory.h"

    #neteq
    "${WEBRTC_MODULES_DIR}/audio_coding/neteq/accelerate.cc"
    "${WEBRTC_MODULES_DIR}/audio_coding/neteq/accelerate.h"
    "${WEBRTC_MODULES_DIR}/audio_coding/neteq/audio_multi_vector.cc"
    "${WEBRTC_MODULES_DIR}/audio_coding/neteq/audio_multi_vector.h"
    "${WEBRTC_MODULES_DIR}/audio_coding/neteq/audio_vector.cc"
    "${WEBRTC_MODULES_DIR}/audio_coding/neteq/audio_vector.h"
    "${WEBRTC_MODULES_DIR}/audio_coding/neteq/background_noise.cc"
    "${WEBRTC_MODULES_DIR}/audio_coding/neteq/background_noise.h"
    "${WEBRTC_MODULES_DIR}/audio_coding/neteq/buffer_level_filter.cc"
    "${WEBRTC_MODULES_DIR}/audio_coding/neteq/buffer_level_filter.h"
    "${WEBRTC_MODULES_DIR}/audio_coding/neteq/comfort_noise.cc"
    "${WEBRTC_MODULES_DIR}/audio_coding/neteq/comfort_noise.h"
    "${WEBRTC_MODULES_DIR}/audio_coding/neteq/cross_correlation.cc"
    "${WEBRTC_MODULES_DIR}/audio_coding/neteq/cross_correlation.h"
    "${WEBRTC_MODULES_DIR}/audio_coding/neteq/decision_logic.cc"
    "${WEBRTC_MODULES_DIR}/audio_coding/neteq/decision_logic.h"
    "${WEBRTC_MODULES_DIR}/audio_coding/neteq/decoder_database.cc"
    "${WEBRTC_MODULES_DIR}/audio_coding/neteq/decoder_database.h"
    "${WEBRTC_MODULES_DIR}/audio_coding/neteq/delay_manager.cc"
    "${WEBRTC_MODULES_DIR}/audio_coding/neteq/delay_manager.h"
    "${WEBRTC_MODULES_DIR}/audio_coding/neteq/dsp_helper.cc"
    "${WEBRTC_MODULES_DIR}/audio_coding/neteq/dsp_helper.h"
    "${WEBRTC_MODULES_DIR}/audio_coding/neteq/dtmf_buffer.cc"
    "${WEBRTC_MODULES_DIR}/audio_coding/neteq/dtmf_buffer.h"
    "${WEBRTC_MODULES_DIR}/audio_coding/neteq/dtmf_tone_generator.cc"
    "${WEBRTC_MODULES_DIR}/audio_coding/neteq/dtmf_tone_generator.h"
    "${WEBRTC_MODULES_DIR}/audio_coding/neteq/expand.cc"
    "${WEBRTC_MODULES_DIR}/audio_coding/neteq/expand.h"
    "${WEBRTC_MODULES_DIR}/audio_coding/neteq/expand_uma_logger.cc"
    "${WEBRTC_MODULES_DIR}/audio_coding/neteq/expand_uma_logger.h"
    "${WEBRTC_MODULES_DIR}/audio_coding/neteq/histogram.cc"
    "${WEBRTC_MODULES_DIR}/audio_coding/neteq/histogram.h"
    "${WEBRTC_MODULES_DIR}/audio_coding/neteq/merge.cc"
    "${WEBRTC_MODULES_DIR}/audio_coding/neteq/merge.h"
    "${WEBRTC_MODULES_DIR}/audio_coding/neteq/nack_tracker.cc"
    "${WEBRTC_MODULES_DIR}/audio_coding/neteq/nack_tracker.h"
    "${WEBRTC_MODULES_DIR}/audio_coding/neteq/neteq_impl.cc"
    "${WEBRTC_MODULES_DIR}/audio_coding/neteq/neteq_impl.h"
    "${WEBRTC_MODULES_DIR}/audio_coding/neteq/normal.cc"
    "${WEBRTC_MODULES_DIR}/audio_coding/neteq/normal.h"
    "${WEBRTC_MODULES_DIR}/audio_coding/neteq/packet.cc"
    "${WEBRTC_MODULES_DIR}/audio_coding/neteq/packet.h"
    "${WEBRTC_MODULES_DIR}/audio_coding/neteq/packet_buffer.cc"
    "${WEBRTC_MODULES_DIR}/audio_coding/neteq/packet_buffer.h"
    "${WEBRTC_MODULES_DIR}/audio_coding/neteq/post_decode_vad.cc"
    "${WEBRTC_MODULES_DIR}/audio_coding/neteq/post_decode_vad.h"
    "${WEBRTC_MODULES_DIR}/audio_coding/neteq/preemptive_expand.cc"
    "${WEBRTC_MODULES_DIR}/audio_coding/neteq/preemptive_expand.h"
    "${WEBRTC_MODULES_DIR}/audio_coding/neteq/random_vector.cc"
    "${WEBRTC_MODULES_DIR}/audio_coding/neteq/random_vector.h"
    "${WEBRTC_MODULES_DIR}/audio_coding/neteq/red_payload_splitter.cc"
    "${WEBRTC_MODULES_DIR}/audio_coding/neteq/red_payload_splitter.h"
    "${WEBRTC_MODULES_DIR}/audio_coding/neteq/statistics_calculator.cc"
    "${WEBRTC_MODULES_DIR}/audio_coding/neteq/statistics_calculator.h"
    "${WEBRTC_MODULES_DIR}/audio_coding/neteq/sync_buffer.cc"
    "${WEBRTC_MODULES_DIR}/audio_coding/neteq/sync_buffer.h"
    "${WEBRTC_MODULES_DIR}/audio_coding/neteq/time_stretch.cc"
    "${WEBRTC_MODULES_DIR}/audio_coding/neteq/time_stretch.h"
    "${WEBRTC_MODULES_DIR}/audio_coding/neteq/timestamp_scaler.cc"
    "${WEBRTC_MODULES_DIR}/audio_coding/neteq/timestamp_scaler.h"

    #webrtc_cng
    "${WEBRTC_MODULES_DIR}/audio_coding/codecs/cng/webrtc_cng.cc"
    "${WEBRTC_MODULES_DIR}/audio_coding/codecs/cng/webrtc_cng.h"
)

add_library("${WEBRTC_COMPONENT_PREFIX}modules_audio_device" STATIC
    #audio_device_api
    "${WEBRTC_MODULES_DIR}/audio_device/include/audio_device.h"
    "${WEBRTC_MODULES_DIR}/audio_device/include/audio_device_defines.h"
    #audio_device_impl
    #audio_device_buffer
    "${WEBRTC_MODULES_DIR}/audio_device/audio_device_buffer.cc"
    "${WEBRTC_MODULES_DIR}/audio_device/audio_device_buffer.h"
    "${WEBRTC_MODULES_DIR}/audio_device/audio_device_config.h"
    "${WEBRTC_MODULES_DIR}/audio_device/fine_audio_buffer.cc"
    "${WEBRTC_MODULES_DIR}/audio_device/fine_audio_buffer.h"
    #audio_device_default
    "${WEBRTC_MODULES_DIR}/audio_device/include/audio_device_default.h"
    #audio_device_generic
    "${WEBRTC_MODULES_DIR}/audio_device/audio_device_generic.cc"
    "${WEBRTC_MODULES_DIR}/audio_device/audio_device_generic.h"
)

add_library("${WEBRTC_COMPONENT_PREFIX}modules_audio_mixer" STATIC
    #audio_mixer_impl
    "${WEBRTC_MODULES_DIR}/audio_mixer/audio_mixer_impl.cc"
    "${WEBRTC_MODULES_DIR}/audio_mixer/audio_mixer_impl.h"
    "${WEBRTC_MODULES_DIR}/audio_mixer/default_output_rate_calculator.cc"
    "${WEBRTC_MODULES_DIR}/audio_mixer/default_output_rate_calculator.h"
    "${WEBRTC_MODULES_DIR}/audio_mixer/frame_combiner.cc"
    "${WEBRTC_MODULES_DIR}/audio_mixer/frame_combiner.h"
    "${WEBRTC_MODULES_DIR}/audio_mixer/output_rate_calculator.h"
    #audio_frame_manipulator
    "${WEBRTC_MODULES_DIR}/audio_mixer/audio_frame_manipulator.cc"
    "${WEBRTC_MODULES_DIR}/audio_mixer/audio_frame_manipulator.h"
)

add_library("${WEBRTC_COMPONENT_PREFIX}modules_audio_processing" STATIC
    "${WEBRTC_MODULES_DIR}/audio_processing/audio_processing_builder_impl.cc"
    "${WEBRTC_MODULES_DIR}/audio_processing/audio_processing_impl.cc"
    "${WEBRTC_MODULES_DIR}/audio_processing/audio_processing_impl.h"
    "${WEBRTC_MODULES_DIR}/audio_processing/common.h"
    "${WEBRTC_MODULES_DIR}/audio_processing/echo_control_mobile_impl.cc"
    "${WEBRTC_MODULES_DIR}/audio_processing/echo_control_mobile_impl.h"
    "${WEBRTC_MODULES_DIR}/audio_processing/echo_detector/circular_buffer.cc"
    "${WEBRTC_MODULES_DIR}/audio_processing/echo_detector/circular_buffer.h"
    "${WEBRTC_MODULES_DIR}/audio_processing/echo_detector/mean_variance_estimator.cc"
    "${WEBRTC_MODULES_DIR}/audio_processing/echo_detector/mean_variance_estimator.h"
    "${WEBRTC_MODULES_DIR}/audio_processing/echo_detector/moving_max.cc"
    "${WEBRTC_MODULES_DIR}/audio_processing/echo_detector/moving_max.h"
    "${WEBRTC_MODULES_DIR}/audio_processing/echo_detector/normalized_covariance_estimator.cc"
    "${WEBRTC_MODULES_DIR}/audio_processing/echo_detector/normalized_covariance_estimator.h"
    "${WEBRTC_MODULES_DIR}/audio_processing/gain_control_impl.cc"
    "${WEBRTC_MODULES_DIR}/audio_processing/gain_control_impl.h"
    "${WEBRTC_MODULES_DIR}/audio_processing/gain_controller2.cc"
    "${WEBRTC_MODULES_DIR}/audio_processing/gain_controller2.h"
    "${WEBRTC_MODULES_DIR}/audio_processing/level_estimator.cc"
    "${WEBRTC_MODULES_DIR}/audio_processing/level_estimator.h"
    "${WEBRTC_MODULES_DIR}/audio_processing/render_queue_item_verifier.h"
    "${WEBRTC_MODULES_DIR}/audio_processing/residual_echo_detector.cc"
    "${WEBRTC_MODULES_DIR}/audio_processing/residual_echo_detector.h"
    "${WEBRTC_MODULES_DIR}/audio_processing/typing_detection.cc"
    "${WEBRTC_MODULES_DIR}/audio_processing/typing_detection.h"
    #aec_dump_interface
    "${WEBRTC_MODULES_DIR}/audio_processing/include/aec_dump.cc"
    "${WEBRTC_MODULES_DIR}/audio_processing/include/aec_dump.h"
    #api
    "${WEBRTC_MODULES_DIR}/audio_processing/include/audio_processing.cc"
    "${WEBRTC_MODULES_DIR}/audio_processing/include/audio_processing.h"
    #apm_logging
    "${WEBRTC_MODULES_DIR}/audio_processing/logging/apm_data_dumper.cc"
    "${WEBRTC_MODULES_DIR}/audio_processing/logging/apm_data_dumper.h"
    #audio_buffer
    "${WEBRTC_MODULES_DIR}/audio_processing/audio_buffer.cc"
    "${WEBRTC_MODULES_DIR}/audio_processing/audio_buffer.h"
    "${WEBRTC_MODULES_DIR}/audio_processing/splitting_filter.cc"
    "${WEBRTC_MODULES_DIR}/audio_processing/splitting_filter.h"
    "${WEBRTC_MODULES_DIR}/audio_processing/three_band_filter_bank.cc"
    "${WEBRTC_MODULES_DIR}/audio_processing/three_band_filter_bank.h"
    #audio_frame_proxies
    "${WEBRTC_MODULES_DIR}/audio_processing/include/audio_frame_proxies.cc"
    "${WEBRTC_MODULES_DIR}/audio_processing/include/audio_frame_proxies.h"
    #audio_frame_view
    "${WEBRTC_MODULES_DIR}/audio_processing/include/audio_frame_view.h"
    #audio_processing_statistics
    "${WEBRTC_MODULES_DIR}/audio_processing/include/audio_processing_statistics.cc"
    "${WEBRTC_MODULES_DIR}/audio_processing/include/audio_processing_statistics.h"
    #config
    "${WEBRTC_MODULES_DIR}/audio_processing/include/config.cc"
    "${WEBRTC_MODULES_DIR}/audio_processing/include/config.h"
    #high_pass_filter
    "${WEBRTC_MODULES_DIR}/audio_processing/high_pass_filter.cc"
    "${WEBRTC_MODULES_DIR}/audio_processing/high_pass_filter.h"
    #optionally_built_submodule_creators
    "${WEBRTC_MODULES_DIR}/audio_processing/optionally_built_submodule_creators.cc"
    "${WEBRTC_MODULES_DIR}/audio_processing/optionally_built_submodule_creators.h"
    #rms_level
    "${WEBRTC_MODULES_DIR}/audio_processing/rms_level.cc"
    "${WEBRTC_MODULES_DIR}/audio_processing/rms_level.h"
    #voice_detection
    "${WEBRTC_MODULES_DIR}/audio_processing/voice_detection.cc"
    "${WEBRTC_MODULES_DIR}/audio_processing/voice_detection.h"
)

add_library("${WEBRTC_COMPONENT_PREFIX}modules_congestion_controller" STATIC
    "${WEBRTC_MODULES_DIR}/congestion_controller/include/receive_side_congestion_controller.h"
    "${WEBRTC_MODULES_DIR}/congestion_controller/receive_side_congestion_controller.cc"
)

add_library("${WEBRTC_COMPONENT_PREFIX}modules_pacing" STATIC
    "${WEBRTC_MODULES_DIR}/pacing/bitrate_prober.cc"
    "${WEBRTC_MODULES_DIR}/pacing/bitrate_prober.h"
    "${WEBRTC_MODULES_DIR}/pacing/paced_sender.cc"
    "${WEBRTC_MODULES_DIR}/pacing/paced_sender.h"
    "${WEBRTC_MODULES_DIR}/pacing/pacing_controller.cc"
    "${WEBRTC_MODULES_DIR}/pacing/pacing_controller.h"
    "${WEBRTC_MODULES_DIR}/pacing/packet_router.cc"
    "${WEBRTC_MODULES_DIR}/pacing/packet_router.h"
    "${WEBRTC_MODULES_DIR}/pacing/round_robin_packet_queue.cc"
    "${WEBRTC_MODULES_DIR}/pacing/round_robin_packet_queue.h"
    "${WEBRTC_MODULES_DIR}/pacing/rtp_packet_pacer.h"
    "${WEBRTC_MODULES_DIR}/pacing/task_queue_paced_sender.cc"
    "${WEBRTC_MODULES_DIR}/pacing/task_queue_paced_sender.h"
    #interval_budget
    "${WEBRTC_MODULES_DIR}/pacing/interval_budget.cc"
    "${WEBRTC_MODULES_DIR}/pacing/interval_budget.h"
)

add_library("${WEBRTC_COMPONENT_PREFIX}modules_remote_bitrate_estimator" STATIC
    "${WEBRTC_MODULES_DIR}/remote_bitrate_estimator/aimd_rate_control.cc"
    "${WEBRTC_MODULES_DIR}/remote_bitrate_estimator/aimd_rate_control.h"
    "${WEBRTC_MODULES_DIR}/remote_bitrate_estimator/bwe_defines.cc"
    "${WEBRTC_MODULES_DIR}/remote_bitrate_estimator/include/bwe_defines.h"
    "${WEBRTC_MODULES_DIR}/remote_bitrate_estimator/include/remote_bitrate_estimator.h"
    "${WEBRTC_MODULES_DIR}/remote_bitrate_estimator/inter_arrival.cc"
    "${WEBRTC_MODULES_DIR}/remote_bitrate_estimator/inter_arrival.h"
    "${WEBRTC_MODULES_DIR}/remote_bitrate_estimator/overuse_detector.cc"
    "${WEBRTC_MODULES_DIR}/remote_bitrate_estimator/overuse_detector.h"
    "${WEBRTC_MODULES_DIR}/remote_bitrate_estimator/overuse_estimator.cc"
    "${WEBRTC_MODULES_DIR}/remote_bitrate_estimator/overuse_estimator.h"
    "${WEBRTC_MODULES_DIR}/remote_bitrate_estimator/remote_bitrate_estimator_abs_send_time.cc"
    "${WEBRTC_MODULES_DIR}/remote_bitrate_estimator/remote_bitrate_estimator_abs_send_time.h"
    "${WEBRTC_MODULES_DIR}/remote_bitrate_estimator/remote_bitrate_estimator_single_stream.cc"
    "${WEBRTC_MODULES_DIR}/remote_bitrate_estimator/remote_bitrate_estimator_single_stream.h"
    "${WEBRTC_MODULES_DIR}/remote_bitrate_estimator/remote_estimator_proxy.cc"
    "${WEBRTC_MODULES_DIR}/remote_bitrate_estimator/remote_estimator_proxy.h"
    "${WEBRTC_MODULES_DIR}/remote_bitrate_estimator/test/bwe_test_logging.h"
)

add_library("${WEBRTC_COMPONENT_PREFIX}modules_rtp_rtcp" STATIC
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/include/flexfec_receiver.h"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/include/flexfec_sender.h"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/include/receive_statistics.h"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/include/remote_ntp_time_estimator.h"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/include/rtp_rtcp.h"  # deprecated
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/include/ulpfec_receiver.h"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/absolute_capture_time_receiver.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/absolute_capture_time_receiver.h"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/absolute_capture_time_sender.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/absolute_capture_time_sender.h"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/active_decode_targets_helper.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/active_decode_targets_helper.h"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/create_video_rtp_depacketizer.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/create_video_rtp_depacketizer.h"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/deprecated/deprecated_rtp_sender_egress.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/deprecated/deprecated_rtp_sender_egress.h"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/dtmf_queue.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/dtmf_queue.h"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/fec_private_tables_bursty.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/fec_private_tables_bursty.h"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/fec_private_tables_random.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/fec_private_tables_random.h"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/flexfec_header_reader_writer.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/flexfec_header_reader_writer.h"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/flexfec_receiver.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/flexfec_sender.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/forward_error_correction.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/forward_error_correction.h"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/forward_error_correction_internal.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/forward_error_correction_internal.h"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/packet_loss_stats.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/packet_loss_stats.h"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/receive_statistics_impl.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/receive_statistics_impl.h"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/remote_ntp_time_estimator.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtcp_nack_stats.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtcp_nack_stats.h"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtcp_receiver.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtcp_receiver.h"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtcp_sender.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtcp_sender.h"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtp_descriptor_authentication.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtp_descriptor_authentication.h"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtp_format.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtp_format.h"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtp_format_h264.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtp_format_h264.h"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtp_format_video_generic.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtp_format_video_generic.h"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtp_format_vp8.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtp_format_vp8.h"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtp_format_vp9.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtp_format_vp9.h"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtp_header_extension_size.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtp_header_extension_size.h"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtp_packet_history.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtp_packet_history.h"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtp_packetizer_av1.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtp_packetizer_av1.h"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtp_rtcp_config.h"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtp_rtcp_impl.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtp_rtcp_impl.h"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtp_rtcp_impl2.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtp_rtcp_impl2.h"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtp_rtcp_interface.h"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtp_sender.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtp_sender.h"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtp_sender_audio.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtp_sender_audio.h"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtp_sender_egress.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtp_sender_egress.h"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtp_sender_video.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtp_sender_video.h"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtp_sender_video_frame_transformer_delegate.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtp_sender_video_frame_transformer_delegate.h"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtp_sequence_number_map.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtp_sequence_number_map.h"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtp_utility.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtp_utility.h"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/source_tracker.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/source_tracker.h"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/time_util.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/time_util.h"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/tmmbr_help.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/tmmbr_help.h"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/ulpfec_generator.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/ulpfec_generator.h"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/ulpfec_header_reader_writer.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/ulpfec_header_reader_writer.h"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/ulpfec_receiver_impl.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/ulpfec_receiver_impl.h"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/video_fec_generator.h"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/video_rtp_depacketizer.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/video_rtp_depacketizer.h"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/video_rtp_depacketizer_av1.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/video_rtp_depacketizer_av1.h"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/video_rtp_depacketizer_generic.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/video_rtp_depacketizer_generic.h"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/video_rtp_depacketizer_h264.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/video_rtp_depacketizer_h264.h"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/video_rtp_depacketizer_raw.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/video_rtp_depacketizer_raw.h"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/video_rtp_depacketizer_vp8.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/video_rtp_depacketizer_vp8.h"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/video_rtp_depacketizer_vp9.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/video_rtp_depacketizer_vp9.h"

#rtp_rtcp_format
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/include/report_block_data.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/include/rtp_rtcp_defines.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtcp_packet.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtcp_packet/app.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtcp_packet/bye.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtcp_packet/common_header.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtcp_packet/compound_packet.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtcp_packet/dlrr.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtcp_packet/extended_jitter_report.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtcp_packet/extended_reports.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtcp_packet/fir.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtcp_packet/loss_notification.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtcp_packet/nack.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtcp_packet/pli.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtcp_packet/psfb.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtcp_packet/rapid_resync_request.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtcp_packet/receiver_report.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtcp_packet/remb.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtcp_packet/remote_estimate.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtcp_packet/report_block.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtcp_packet/rrtr.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtcp_packet/rtpfb.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtcp_packet/sdes.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtcp_packet/sender_report.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtcp_packet/target_bitrate.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtcp_packet/tmmb_item.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtcp_packet/tmmbn.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtcp_packet/tmmbr.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtcp_packet/transport_feedback.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtp_dependency_descriptor_extension.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtp_dependency_descriptor_reader.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtp_dependency_descriptor_reader.h"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtp_dependency_descriptor_writer.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtp_dependency_descriptor_writer.h"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtp_generic_frame_descriptor.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtp_generic_frame_descriptor_extension.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtp_header_extension_map.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtp_header_extensions.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtp_packet.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtp_packet_received.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtp_packet_to_send.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtp_video_layers_allocation_extension.cc"
    #rtp_video_header
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtp_video_header.cc"
    "${WEBRTC_MODULES_DIR}/rtp_rtcp/source/rtp_video_header.h"
)

add_library("${WEBRTC_COMPONENT_PREFIX}modules_utility" STATIC
    "${WEBRTC_MODULES_DIR}/utility/include/process_thread.h"
    "${WEBRTC_MODULES_DIR}/utility/source/process_thread_impl.cc"
    "${WEBRTC_MODULES_DIR}/utility/source/process_thread_impl.h"
)

add_library("${WEBRTC_COMPONENT_PREFIX}modules_video_coding" STATIC
    "${WEBRTC_MODULES_DIR}/video_coding/codec_timer.cc"
    "${WEBRTC_MODULES_DIR}/video_coding/codec_timer.h"
    "${WEBRTC_MODULES_DIR}/video_coding/decoder_database.cc"
    "${WEBRTC_MODULES_DIR}/video_coding/decoder_database.h"
    "${WEBRTC_MODULES_DIR}/video_coding/fec_controller_default.cc"
    "${WEBRTC_MODULES_DIR}/video_coding/fec_controller_default.h"
    "${WEBRTC_MODULES_DIR}/video_coding/fec_rate_table.h"
    "${WEBRTC_MODULES_DIR}/video_coding/frame_buffer2.cc"
    "${WEBRTC_MODULES_DIR}/video_coding/frame_buffer2.h"
    "${WEBRTC_MODULES_DIR}/video_coding/frame_object.cc"
    "${WEBRTC_MODULES_DIR}/video_coding/frame_object.h"
    "${WEBRTC_MODULES_DIR}/video_coding/generic_decoder.cc"
    "${WEBRTC_MODULES_DIR}/video_coding/generic_decoder.h"
    "${WEBRTC_MODULES_DIR}/video_coding/h264_sprop_parameter_sets.cc"
    "${WEBRTC_MODULES_DIR}/video_coding/h264_sprop_parameter_sets.h"
    "${WEBRTC_MODULES_DIR}/video_coding/h264_sps_pps_tracker.cc"
    "${WEBRTC_MODULES_DIR}/video_coding/h264_sps_pps_tracker.h"
    "${WEBRTC_MODULES_DIR}/video_coding/include/video_codec_initializer.h"
    "${WEBRTC_MODULES_DIR}/video_coding/inter_frame_delay.cc"
    "${WEBRTC_MODULES_DIR}/video_coding/inter_frame_delay.h"
    "${WEBRTC_MODULES_DIR}/video_coding/internal_defines.h"
    "${WEBRTC_MODULES_DIR}/video_coding/jitter_estimator.cc"
    "${WEBRTC_MODULES_DIR}/video_coding/jitter_estimator.h"
    "${WEBRTC_MODULES_DIR}/video_coding/loss_notification_controller.cc"
    "${WEBRTC_MODULES_DIR}/video_coding/loss_notification_controller.h"
    "${WEBRTC_MODULES_DIR}/video_coding/media_opt_util.cc"
    "${WEBRTC_MODULES_DIR}/video_coding/media_opt_util.h"
    "${WEBRTC_MODULES_DIR}/video_coding/packet_buffer.cc"
    "${WEBRTC_MODULES_DIR}/video_coding/packet_buffer.h"
    "${WEBRTC_MODULES_DIR}/video_coding/rtp_frame_reference_finder.cc"
    "${WEBRTC_MODULES_DIR}/video_coding/rtp_frame_reference_finder.h"
    "${WEBRTC_MODULES_DIR}/video_coding/rtt_filter.cc"
    "${WEBRTC_MODULES_DIR}/video_coding/rtt_filter.h"
    "${WEBRTC_MODULES_DIR}/video_coding/timestamp_map.cc"
    "${WEBRTC_MODULES_DIR}/video_coding/timestamp_map.h"
    "${WEBRTC_MODULES_DIR}/video_coding/timing.cc"
    "${WEBRTC_MODULES_DIR}/video_coding/timing.h"
    "${WEBRTC_MODULES_DIR}/video_coding/unique_timestamp_counter.cc"
    "${WEBRTC_MODULES_DIR}/video_coding/unique_timestamp_counter.h"
    "${WEBRTC_MODULES_DIR}/video_coding/video_codec_initializer.cc"
    "${WEBRTC_MODULES_DIR}/video_coding/video_receiver2.cc"
    "${WEBRTC_MODULES_DIR}/video_coding/video_receiver2.h"
    #codec_globals_headers
    "${WEBRTC_MODULES_DIR}/video_coding/codecs/h264/include/h264_globals.h"
    "${WEBRTC_MODULES_DIR}/video_coding/codecs/interface/common_constants.h"
    "${WEBRTC_MODULES_DIR}/video_coding/codecs/vp8/include/vp8_globals.h"
    "${WEBRTC_MODULES_DIR}/video_coding/codecs/vp9/include/vp9_globals.h"
    #encoded_frame
    "${WEBRTC_MODULES_DIR}/video_coding/encoded_frame.cc"
    "${WEBRTC_MODULES_DIR}/video_coding/encoded_frame.h"
    #video_codec_interface
    "${WEBRTC_MODULES_DIR}/video_coding/include/video_codec_interface.cc"
    "${WEBRTC_MODULES_DIR}/video_coding/include/video_codec_interface.h"
    "${WEBRTC_MODULES_DIR}/video_coding/include/video_coding_defines.h"
    "${WEBRTC_MODULES_DIR}/video_coding/include/video_error_codes.h"
    "${WEBRTC_MODULES_DIR}/video_coding/video_coding_defines.cc"
    #video_coding_utility
    "${WEBRTC_MODULES_DIR}/video_coding/utility/decoded_frames_history.cc"
    "${WEBRTC_MODULES_DIR}/video_coding/utility/decoded_frames_history.h"
    "${WEBRTC_MODULES_DIR}/video_coding/utility/frame_dropper.cc"
    "${WEBRTC_MODULES_DIR}/video_coding/utility/frame_dropper.h"
    "${WEBRTC_MODULES_DIR}/video_coding/utility/framerate_controller.cc"
    "${WEBRTC_MODULES_DIR}/video_coding/utility/framerate_controller.h"
    "${WEBRTC_MODULES_DIR}/video_coding/utility/ivf_file_reader.cc"
    "${WEBRTC_MODULES_DIR}/video_coding/utility/ivf_file_reader.h"
    "${WEBRTC_MODULES_DIR}/video_coding/utility/ivf_file_writer.cc"
    "${WEBRTC_MODULES_DIR}/video_coding/utility/ivf_file_writer.h"
    "${WEBRTC_MODULES_DIR}/video_coding/utility/quality_scaler.cc"
    "${WEBRTC_MODULES_DIR}/video_coding/utility/quality_scaler.h"
    "${WEBRTC_MODULES_DIR}/video_coding/utility/simulcast_rate_allocator.cc"
    "${WEBRTC_MODULES_DIR}/video_coding/utility/simulcast_rate_allocator.h"
    "${WEBRTC_MODULES_DIR}/video_coding/utility/simulcast_utility.cc"
    "${WEBRTC_MODULES_DIR}/video_coding/utility/simulcast_utility.h"
    "${WEBRTC_MODULES_DIR}/video_coding/utility/vp8_header_parser.cc"
    "${WEBRTC_MODULES_DIR}/video_coding/utility/vp8_header_parser.h"
    "${WEBRTC_MODULES_DIR}/video_coding/utility/vp9_uncompressed_header_parser.cc"
    "${WEBRTC_MODULES_DIR}/video_coding/utility/vp9_uncompressed_header_parser.h"
    #webrtc_vp9_helpers
    "${WEBRTC_MODULES_DIR}/video_coding/codecs/vp9/svc_config.cc"
    "${WEBRTC_MODULES_DIR}/video_coding/codecs/vp9/svc_config.h"
    "${WEBRTC_MODULES_DIR}/video_coding/codecs/vp9/svc_rate_allocator.h"
)

add_library("${WEBRTC_COMPONENT_PREFIX}video_processing" STATIC
    "${WEBRTC_MODULES_DIR}/video_processing/util/denoiser_filter.cc"
    "${WEBRTC_MODULES_DIR}/video_processing/util/denoiser_filter_c.cc"
    "${WEBRTC_MODULES_DIR}/video_processing/util/denoiser_filter_c.h"
    "${WEBRTC_MODULES_DIR}/video_processing/util/noise_estimation.cc"
    "${WEBRTC_MODULES_DIR}/video_processing/util/noise_estimation.h"
    "${WEBRTC_MODULES_DIR}/video_processing/util/skin_detection.cc"
    "${WEBRTC_MODULES_DIR}/video_processing/util/skin_detection.h"
    "${WEBRTC_MODULES_DIR}/video_processing/video_denoiser.cc"
    "${WEBRTC_MODULES_DIR}/video_processing/video_denoiser.h"
    #denoiser_filter
    "${WEBRTC_MODULES_DIR}/video_processing/util/denoiser_filter.h"
)


add_library("${WEBRTC_COMPONENT_PREFIX}modules" STATIC "")
target_link_libraries("${WEBRTC_COMPONENT_PREFIX}modules"
    "${WEBRTC_COMPONENT_PREFIX}modules_audio_coding"
    "${WEBRTC_COMPONENT_PREFIX}modules_audio_device"
    "${WEBRTC_COMPONENT_PREFIX}modules_audio_mixer"
    "${WEBRTC_COMPONENT_PREFIX}modules_audio_processing"
    "${WEBRTC_COMPONENT_PREFIX}modules_congestion_controller"
    "${WEBRTC_COMPONENT_PREFIX}modules_pacing"
    "${WEBRTC_COMPONENT_PREFIX}modules_remote_bitrate_estimator"
    "${WEBRTC_COMPONENT_PREFIX}modules_rtp_rtcp"
    "${WEBRTC_COMPONENT_PREFIX}modules_utility"
    "${WEBRTC_COMPONENT_PREFIX}modules_video_coding"
    "${WEBRTC_COMPONENT_PREFIX}modules_video_processing"
)

add_library(webrtc::modules ALIAS "${WEBRTC_COMPONENT_PREFIX}modules")