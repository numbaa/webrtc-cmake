#set(OPUS_IDE_FOLDER "${THIRD_PARTY_DIR}/opus")
add_subdirectory("${THIRD_PARTY_DIR}/opus")
set_target_properties(opus PROPERTIES FOLDER "${THIRD_PARTY_DIR}/opus")