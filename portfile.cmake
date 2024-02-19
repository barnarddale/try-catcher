vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO barnarddale/try-catcher
    REF 392ff08524932bd781c06c80a2f5cc3efe34d066
    SHA512 0
    HEAD_REF main
)

#file(COPY ${SOURCE_PATH}/include/try_catcher.h DESTINATION ${CURRENT_PACKAGES_DIR}/include)

# This is a header only library
file(INSTALL "${SOURCE_PATH}/try_catcher.h" DESTINATION "${CURRENT_PACKAGES_DIR}/include")

# Handle copyright
#file(INSTALL "${SOURCE_PATH}/LICENSE" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}" RENAME "copyright")

