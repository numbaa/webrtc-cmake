set(LIB_VPX "vpx")
set(LIB_VPX_ROOT "${THIRD_PARTY_DIR}/libvpx")
add_library(${LIB_VPX} STATIC
    #libvpx_srcs_x86_64
    "${LIB_VPX_ROOT}/source/libvpx/vp8/common/alloccommon.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/common/alloccommon.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/common/blockd.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/common/blockd.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/common/coefupdateprobs.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/common/common.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/common/default_coef_probs.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/common/dequantize.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/common/entropy.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/common/entropy.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/common/entropymode.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/common/entropymode.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/common/entropymv.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/common/entropymv.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/common/extend.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/common/extend.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/common/filter.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/common/filter.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/common/findnearmv.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/common/findnearmv.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/common/generic/systemdependent.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/common/header.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/common/idct_blk.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/common/idctllm.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/common/invtrans.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/common/loopfilter.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/common/loopfilter_filters.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/common/mbpitch.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/common/mfqe.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/common/modecont.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/common/modecont.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/common/mv.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/common/onyx.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/common/onyxc_int.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/common/onyxd.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/common/postproc.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/common/postproc.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/common/ppflags.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/common/quant_common.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/common/quant_common.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/common/reconinter.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/common/reconinter.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/common/reconintra.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/common/reconintra.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/common/reconintra4x4.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/common/reconintra4x4.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/common/rtcd.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/common/setupintrarecon.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/common/setupintrarecon.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/common/swapyv12buffer.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/common/swapyv12buffer.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/common/systemdependent.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/common/threading.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/common/treecoder.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/common/treecoder.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/common/vp8_entropymodedata.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/common/vp8_loopfilter.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/common/vp8_skin_detection.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/common/vp8_skin_detection.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/common/x86/loopfilter_x86.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/common/x86/vp8_asm_stubs.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/decoder/dboolhuff.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/decoder/dboolhuff.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/decoder/decodeframe.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/decoder/decodemv.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/decoder/decodemv.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/decoder/decoderthreading.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/decoder/detokenize.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/decoder/detokenize.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/decoder/onyxd_if.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/decoder/onyxd_int.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/decoder/threading.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/decoder/treereader.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/encoder/bitstream.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/encoder/bitstream.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/encoder/block.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/encoder/boolhuff.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/encoder/boolhuff.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/encoder/copy_c.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/encoder/dct.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/encoder/dct_value_cost.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/encoder/dct_value_tokens.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/encoder/defaultcoefcounts.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/encoder/denoising.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/encoder/denoising.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/encoder/encodeframe.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/encoder/encodeframe.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/encoder/encodeintra.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/encoder/encodeintra.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/encoder/encodemb.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/encoder/encodemb.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/encoder/encodemv.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/encoder/encodemv.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/encoder/ethreading.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/encoder/ethreading.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/encoder/firstpass.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/encoder/lookahead.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/encoder/lookahead.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/encoder/mcomp.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/encoder/mcomp.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/encoder/modecosts.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/encoder/modecosts.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/encoder/mr_dissim.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/encoder/mr_dissim.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/encoder/onyx_if.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/encoder/onyx_int.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/encoder/pickinter.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/encoder/pickinter.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/encoder/picklpf.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/encoder/picklpf.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/encoder/quantize.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/encoder/ratectrl.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/encoder/ratectrl.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/encoder/rdopt.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/encoder/rdopt.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/encoder/segmentation.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/encoder/segmentation.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/encoder/tokenize.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/encoder/tokenize.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/encoder/treewriter.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/encoder/treewriter.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/encoder/vp8_quantize.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/vp8_cx_iface.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/vp8_dx_iface.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/common/vp9_alloccommon.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/common/vp9_alloccommon.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/common/vp9_blockd.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/common/vp9_blockd.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/common/vp9_common.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/common/vp9_common_data.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/common/vp9_common_data.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/common/vp9_entropy.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/common/vp9_entropy.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/common/vp9_entropymode.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/common/vp9_entropymode.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/common/vp9_entropymv.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/common/vp9_entropymv.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/common/vp9_enums.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/common/vp9_filter.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/common/vp9_filter.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/common/vp9_frame_buffers.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/common/vp9_frame_buffers.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/common/vp9_idct.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/common/vp9_idct.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/common/vp9_loopfilter.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/common/vp9_loopfilter.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/common/vp9_mfqe.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/common/vp9_mfqe.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/common/vp9_mv.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/common/vp9_mvref_common.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/common/vp9_mvref_common.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/common/vp9_onyxc_int.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/common/vp9_postproc.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/common/vp9_postproc.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/common/vp9_ppflags.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/common/vp9_pred_common.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/common/vp9_pred_common.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/common/vp9_quant_common.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/common/vp9_quant_common.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/common/vp9_reconinter.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/common/vp9_reconinter.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/common/vp9_reconintra.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/common/vp9_reconintra.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/common/vp9_rtcd.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/common/vp9_scale.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/common/vp9_scale.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/common/vp9_scan.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/common/vp9_scan.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/common/vp9_seg_common.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/common/vp9_seg_common.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/common/vp9_thread_common.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/common/vp9_thread_common.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/common/vp9_tile_common.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/common/vp9_tile_common.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/decoder/vp9_decodeframe.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/decoder/vp9_decodeframe.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/decoder/vp9_decodemv.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/decoder/vp9_decodemv.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/decoder/vp9_decoder.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/decoder/vp9_decoder.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/decoder/vp9_detokenize.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/decoder/vp9_detokenize.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/decoder/vp9_dsubexp.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/decoder/vp9_dsubexp.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/decoder/vp9_job_queue.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/decoder/vp9_job_queue.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/vp9_aq_cyclicrefresh.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/vp9_aq_cyclicrefresh.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/vp9_bitstream.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/vp9_bitstream.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/vp9_block.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/vp9_context_tree.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/vp9_context_tree.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/vp9_cost.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/vp9_cost.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/vp9_dct.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/vp9_denoiser.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/vp9_denoiser.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/vp9_encodeframe.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/vp9_encodeframe.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/vp9_encodemb.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/vp9_encodemb.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/vp9_encodemv.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/vp9_encodemv.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/vp9_encoder.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/vp9_encoder.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/vp9_ethread.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/vp9_ethread.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/vp9_ext_ratectrl.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/vp9_ext_ratectrl.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/vp9_extend.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/vp9_extend.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/vp9_firstpass.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/vp9_frame_scale.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/vp9_job_queue.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/vp9_lookahead.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/vp9_lookahead.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/vp9_mbgraph.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/vp9_mcomp.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/vp9_mcomp.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/vp9_multi_thread.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/vp9_multi_thread.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/vp9_noise_estimate.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/vp9_noise_estimate.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/vp9_partition_models.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/vp9_picklpf.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/vp9_picklpf.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/vp9_pickmode.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/vp9_pickmode.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/vp9_quantize.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/vp9_quantize.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/vp9_ratectrl.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/vp9_ratectrl.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/vp9_rd.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/vp9_rd.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/vp9_rdopt.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/vp9_rdopt.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/vp9_resize.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/vp9_resize.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/vp9_segmentation.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/vp9_segmentation.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/vp9_skin_detection.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/vp9_skin_detection.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/vp9_speed_features.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/vp9_speed_features.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/vp9_subexp.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/vp9_subexp.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/vp9_svc_layercontext.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/vp9_svc_layercontext.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/vp9_temporal_filter.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/vp9_tokenize.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/vp9_tokenize.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/vp9_treewriter.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/vp9_treewriter.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/vp9_cx_iface.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/vp9_cx_iface.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/vp9_dx_iface.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/vp9_dx_iface.h"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/vp9_iface_common.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/vp9_iface_common.h"
    "${LIB_VPX_ROOT}/source/libvpx/vpx/internal/vpx_codec_internal.h"
    "${LIB_VPX_ROOT}/source/libvpx/vpx/src/vpx_codec.c"
    "${LIB_VPX_ROOT}/source/libvpx/vpx/src/vpx_decoder.c"
    "${LIB_VPX_ROOT}/source/libvpx/vpx/src/vpx_encoder.c"
    "${LIB_VPX_ROOT}/source/libvpx/vpx/src/vpx_image.c"
    "${LIB_VPX_ROOT}/source/libvpx/vpx/vp8.h"
    "${LIB_VPX_ROOT}/source/libvpx/vpx/vp8cx.h"
    "${LIB_VPX_ROOT}/source/libvpx/vpx/vp8dx.h"
    "${LIB_VPX_ROOT}/source/libvpx/vpx/vpx_codec.h"
    "${LIB_VPX_ROOT}/source/libvpx/vpx/vpx_decoder.h"
    "${LIB_VPX_ROOT}/source/libvpx/vpx/vpx_encoder.h"
    "${LIB_VPX_ROOT}/source/libvpx/vpx/vpx_ext_ratectrl.h"
    "${LIB_VPX_ROOT}/source/libvpx/vpx/vpx_frame_buffer.h"
    "${LIB_VPX_ROOT}/source/libvpx/vpx/vpx_image.h"
    "${LIB_VPX_ROOT}/source/libvpx/vpx/vpx_integer.h"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/add_noise.c"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/avg.c"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/bitreader.c"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/bitreader.h"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/bitreader_buffer.c"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/bitreader_buffer.h"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/bitwriter.c"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/bitwriter.h"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/bitwriter_buffer.c"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/bitwriter_buffer.h"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/deblock.c"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/fwd_txfm.c"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/fwd_txfm.h"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/intrapred.c"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/inv_txfm.c"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/inv_txfm.h"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/loopfilter.c"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/postproc.h"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/prob.c"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/prob.h"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/psnr.c"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/psnr.h"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/quantize.c"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/quantize.h"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/sad.c"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/skin_detection.c"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/skin_detection.h"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/subtract.c"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/sum_squares.c"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/txfm_common.h"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/variance.c"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/variance.h"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/vpx_convolve.c"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/vpx_convolve.h"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/vpx_dsp_common.h"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/vpx_dsp_rtcd.c"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/vpx_filter.h"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/bitdepth_conversion_avx2.h"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/bitdepth_conversion_sse2.h"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/convolve.h"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/convolve_avx2.h"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/convolve_sse2.h"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/convolve_ssse3.h"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/fwd_dct32x32_impl_avx2.h"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/fwd_dct32x32_impl_sse2.h"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/fwd_txfm_impl_sse2.h"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/fwd_txfm_sse2.h"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/highbd_inv_txfm_sse2.h"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/highbd_inv_txfm_sse4.h"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/inv_txfm_sse2.h"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/inv_txfm_ssse3.h"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/mem_sse2.h"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/quantize_sse2.h"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/quantize_ssse3.h"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/transpose_sse2.h"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/txfm_common_sse2.h"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_mem/include/vpx_mem_intrnl.h"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_mem/vpx_mem.c"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_mem/vpx_mem.h"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_ports/bitops.h"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_ports/compiler_attributes.h"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_ports/emmintrin_compat.h"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_ports/mem.h"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_ports/mem_ops.h"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_ports/mem_ops_aligned.h"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_ports/msvc.h"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_ports/static_assert.h"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_ports/system_state.h"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_ports/vpx_once.h"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_ports/vpx_timer.h"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_ports/x86.h"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_scale/generic/gen_scalers.c"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_scale/generic/vpx_scale.c"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_scale/generic/yv12config.c"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_scale/generic/yv12extend.c"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_scale/vpx_scale.h"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_scale/vpx_scale_rtcd.c"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_scale/yv12config.h"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_util/endian_inl.h"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_util/vpx_atomics.h"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_util/vpx_thread.c"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_util/vpx_thread.h"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_util/vpx_timestamp.h"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_util/vpx_write_yuv_frame.c"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_util/vpx_write_yuv_frame.h"
    #libvpx_intrinsics_avx"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/x86/vp9_diamond_search_sad_avx.c"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/quantize_avx.c"
    #libvpx_intrinsics_avx2"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/x86/vp9_error_avx2.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/x86/vp9_quantize_avx2.c"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/avg_intrin_avx2.c"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/fwd_txfm_avx2.c"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/highbd_convolve_avx2.c"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/loopfilter_avx2.c"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/sad4d_avx2.c"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/sad_avx2.c"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/variance_avx2.c"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/vpx_subpixel_8t_intrin_avx2.c"
    #libvpx_intrinsics_avx512"
    #libvpx_intrinsics_mmx"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/common/x86/idct_blk_mmx.c"
    #libvpx_intrinsics_sse2"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/common/x86/bilinear_filter_sse2.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/common/x86/idct_blk_sse2.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/encoder/x86/denoising_sse2.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/encoder/x86/vp8_enc_stubs_sse2.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/encoder/x86/vp8_quantize_sse2.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/common/x86/vp9_idct_intrin_sse2.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/x86/vp9_dct_intrin_sse2.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/x86/vp9_denoiser_sse2.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/x86/vp9_highbd_block_error_intrin_sse2.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/x86/vp9_quantize_sse2.c"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/avg_intrin_sse2.c"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/avg_pred_sse2.c"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/fwd_txfm_sse2.c"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/highbd_idct16x16_add_sse2.c"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/highbd_idct32x32_add_sse2.c"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/highbd_idct4x4_add_sse2.c"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/highbd_idct8x8_add_sse2.c"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/highbd_intrapred_intrin_sse2.c"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/highbd_loopfilter_sse2.c"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/highbd_quantize_intrin_sse2.c"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/highbd_variance_sse2.c"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/inv_txfm_sse2.c"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/loopfilter_sse2.c"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/post_proc_sse2.c"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/quantize_sse2.c"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/sum_squares_sse2.c"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/variance_sse2.c"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/vpx_subpixel_4t_intrin_sse2.c"
    #libvpx_intrinsics_sse4_1"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/encoder/x86/quantize_sse4.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/common/x86/vp9_highbd_iht16x16_add_sse4.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/common/x86/vp9_highbd_iht4x4_add_sse4.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/common/x86/vp9_highbd_iht8x8_add_sse4.c"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/highbd_idct16x16_add_sse4.c"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/highbd_idct32x32_add_sse4.c"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/highbd_idct4x4_add_sse4.c"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/highbd_idct8x8_add_sse4.c"
    #libvpx_intrinsics_ssse3"
    "${LIB_VPX_ROOT}/source/libvpx/vp8/encoder/x86/vp8_quantize_ssse3.c"
    "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/x86/vp9_frame_scale_ssse3.c"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/highbd_intrapred_intrin_ssse3.c"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/inv_txfm_ssse3.c"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/quantize_ssse3.c"
    "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/vpx_subpixel_8t_intrin_ssse3.c"
)
set_target_properties(${LIB_VPX} PROPERTIES FOLDER ${LIB_VPX_ROOT})

#asm how?
# add_library("libvpx_asm"
#     "${LIB_VPX_ROOT}/source/libvpx/vp8/common/x86/dequantize_mmx.asm"
#     "${LIB_VPX_ROOT}/source/libvpx/vp8/common/x86/idctllm_mmx.asm"
#     "${LIB_VPX_ROOT}/source/libvpx/vp8/common/x86/idctllm_sse2.asm"
#     "${LIB_VPX_ROOT}/source/libvpx/vp8/common/x86/iwalsh_sse2.asm"
#     "${LIB_VPX_ROOT}/source/libvpx/vp8/common/x86/loopfilter_block_sse2_x86_64.asm"
#     "${LIB_VPX_ROOT}/source/libvpx/vp8/common/x86/loopfilter_sse2.asm"
#     "${LIB_VPX_ROOT}/source/libvpx/vp8/common/x86/mfqe_sse2.asm"
#     "${LIB_VPX_ROOT}/source/libvpx/vp8/common/x86/recon_mmx.asm"
#     "${LIB_VPX_ROOT}/source/libvpx/vp8/common/x86/recon_sse2.asm"
#     "${LIB_VPX_ROOT}/source/libvpx/vp8/common/x86/subpixel_mmx.asm"
#     "${LIB_VPX_ROOT}/source/libvpx/vp8/common/x86/subpixel_sse2.asm"
#     "${LIB_VPX_ROOT}/source/libvpx/vp8/common/x86/subpixel_ssse3.asm"
#     "${LIB_VPX_ROOT}/source/libvpx/vp8/encoder/x86/block_error_sse2.asm"
#     "${LIB_VPX_ROOT}/source/libvpx/vp8/encoder/x86/copy_sse2.asm"
#     "${LIB_VPX_ROOT}/source/libvpx/vp8/encoder/x86/copy_sse3.asm"
#     "${LIB_VPX_ROOT}/source/libvpx/vp8/encoder/x86/dct_sse2.asm"
#     "${LIB_VPX_ROOT}/source/libvpx/vp8/encoder/x86/fwalsh_sse2.asm"
#     "${LIB_VPX_ROOT}/source/libvpx/vp9/common/x86/vp9_mfqe_sse2.asm"
#     "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/x86/vp9_dct_sse2.asm"
#     "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/x86/vp9_error_sse2.asm"
#     "${LIB_VPX_ROOT}/source/libvpx/vp9/encoder/x86/vp9_quantize_ssse3_x86_64.asm"
#     "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/add_noise_sse2.asm"
#     "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/avg_ssse3_x86_64.asm"
#     "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/deblock_sse2.asm"
#     "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/fwd_txfm_ssse3_x86_64.asm"
#     "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/highbd_intrapred_sse2.asm"
#     "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/highbd_sad4d_sse2.asm"
#     "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/highbd_sad_sse2.asm"
#     "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/highbd_subpel_variance_impl_sse2.asm"
#     "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/highbd_variance_impl_sse2.asm"
#     "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/intrapred_sse2.asm"
#     "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/intrapred_ssse3.asm"
#     "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/inv_wht_sse2.asm"
#     "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/sad4d_sse2.asm"
#     "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/sad_sse2.asm"
#     "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/sad_sse3.asm"
#     "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/sad_sse4.asm"
#     "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/sad_ssse3.asm"
#     "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/ssim_opt_x86_64.asm"
#     "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/subpel_variance_sse2.asm"
#     "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/subtract_sse2.asm"
#     "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/vpx_convolve_copy_sse2.asm"
#     "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/vpx_high_subpixel_8t_sse2.asm"
#     "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/vpx_high_subpixel_bilinear_sse2.asm"
#     "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/vpx_subpixel_8t_sse2.asm"
#     "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/vpx_subpixel_8t_ssse3.asm"
#     "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/vpx_subpixel_bilinear_sse2.asm"
#     "${LIB_VPX_ROOT}/source/libvpx/vpx_dsp/x86/vpx_subpixel_bilinear_ssse3.asm"
#     "${LIB_VPX_ROOT}/source/libvpx/vpx_ports/emms_mmx.asm"
#     "${LIB_VPX_ROOT}/source/libvpx/vpx_ports/float_control_word.asm"
# )
target_include_directories(${LIB_VPX}
    PUBLIC
        "${LIB_VPX_ROOT}/source/config"
        "${LIB_VPX_ROOT}/source/config/win/x64"
        "${LIB_VPX_ROOT}/source/libvpx"
)