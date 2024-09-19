if(VCPKG_TARGET_IS_WINDOWS)
    vcpkg_check_linkage(ONLY_STATIC_LIBRARY)
endif()

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO org-ru/vmime
    REF v0.9.2
    SHA512 13123b635750c1de46a6df185d1f5f8453bb76fb08d574ac98357e467ef21d44f9723412cdb58c9e203bd038c8a3a43168db68da940255e2c10346b576468ab5
    HEAD_REF master
)

vcpkg_cmake_configure(
    SOURCE_PATH ${SOURCE_PATH}
#    OPTIONS
#        -DBUILD_TESTING=OFF
#        -DUSE_SYSTEM_DEPENDENCIES=ON
)

vcpkg_cmake_install()
