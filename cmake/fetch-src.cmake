include(ExternalProject)
find_package(Git REQUIRED)

option(USE_MIRROR_REPO "Use mirror repository of webrtc" OFF)

if(USE_MIRROR_REPO)
set(WEBRTC_REPO "https://github.com/numbaa/webrtc-mirror")
else()
set(WEBRTC_REPO "https://webrtc.googlesource.com/src")
endif()

ExternalProject_Add(
    webrtc-src
    SOURCE_DIR "${CMAKE_CURRENT_SOURCE_DIR}/${WEBRTC_SOURCE_DIR}"
    GIT_REPOSITORY ${WEBRTC_REPO}
    GIT_TAG "daab6896e2938e28f01e305ce2fff038f47554c4"
    GIT_PROGRESS TRUE
    TIMEOUT 10
    CONFIGURE_COMMAND ""
    CMAKE_COMMAND ""
    BUILD_COMMAND ""
    INSTALL_COMMAND ""
    TEST_COMMAND ""
)