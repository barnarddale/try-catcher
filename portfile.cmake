vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO barnarddale/try-catcher
    REF fill_in_hash_here
    SHA512 0
    HEAD_REF main
)

# This is a header-only modern C++ package.
file(INSTALL "${SOURCE_PATH}/try_catcher.h" DESTINATION "${CURRENT_PACKAGES_DIR}/include")
