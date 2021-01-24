set(JSONCPP "jsoncpp")
set(JSONCPP_ROOT "${THIRD_PARTY_DIR}/jsoncpp")
add_library(${JSONCPP} OBJECT
    "${JSONCPP_ROOT}/source/include/json/allocator.h"
    "${JSONCPP_ROOT}/source/include/json/assertions.h"
    "${JSONCPP_ROOT}/source/include/json/config.h"
    "${JSONCPP_ROOT}/source/include/json/forwards.h"
    "${JSONCPP_ROOT}/source/include/json/json.h"
    "${JSONCPP_ROOT}/source/include/json/json_features.h"
    "${JSONCPP_ROOT}/source/include/json/reader.h"
    "${JSONCPP_ROOT}/source/include/json/value.h"
    "${JSONCPP_ROOT}/source/include/json/version.h"
    "${JSONCPP_ROOT}/source/include/json/writer.h"
    "${JSONCPP_ROOT}/source/src/lib_json/json_reader.cpp"
    "${JSONCPP_ROOT}/source/src/lib_json/json_tool.h"
    "${JSONCPP_ROOT}/source/src/lib_json/json_value.cpp"
    "${JSONCPP_ROOT}/source/src/lib_json/json_writer.cpp"
)
set_target_properties(${JSONCPP} PROPERTIES FOLDER ${JSONCPP_ROOT})

target_compile_options(${JSONCPP} PRIVATE
   "-DJSON_USE_EXCEPTION=0"
   "-DJSON_USE_NULLREF=0"
)

target_include_directories(${JSONCPP}
   PUBLIC
      "${JSONCPP_ROOT}/source/src/lib_json"
      "${JSONCPP_ROOT}/source/include"
      "."
)