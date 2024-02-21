#include(vcpkg_common_functions)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO barnarddale/try-catcher
    REF c8d456dadb49335353920d9aa316326475140d3d
    SHA512 7b4c29f06aa90133cca37e9d1d9218bce99c4fe410e5732c70b016bc1a2d17a6a462a9f3ae62ed3ccebff763dfe1d57642981af1896dcc3b4d803df6c3a34a30
    HEAD_REF main
)

#file(COPY ${SOURCE_PATH}/include/try_catcher.h DESTINATION ${CURRENT_PACKAGES_DIR}/include)

# This is a header only library
file(INSTALL "${SOURCE_PATH}/try_catcher.h" DESTINATION "${CURRENT_PACKAGES_DIR}/include")

# Handle copyright
#file(INSTALL "${SOURCE_PATH}/LICENSE" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}" RENAME "copyright")

