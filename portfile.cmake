#include(vcpkg_common_functions)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO barnarddale/try-catcher
    REF f8f6bf553efae7d808ff37d473cbcbf4b1ba0a5d
    SHA512 0
    HEAD_REF main
)

#file(COPY ${SOURCE_PATH}/include/try_catcher.h DESTINATION ${CURRENT_PACKAGES_DIR}/include)

# This is a header only library
file(INSTALL "${SOURCE_PATH}/try_catcher.h" DESTINATION "${CURRENT_PACKAGES_DIR}/include")

# Handle copyright
#file(INSTALL "${SOURCE_PATH}/LICENSE" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}" RENAME "copyright")

