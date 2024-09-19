if(VCPKG_TARGET_IS_WINDOWS)
    vcpkg_check_linkage(ONLY_STATIC_LIBRARY)
endif()

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO org-ru/vmime
    REF v0.9.2
    SHA512 0
    HEAD_REF master
)

vcpkg_cmake_configure(
    SOURCE_PATH ${SOURCE_PATH}
#    OPTIONS
#        -DBUILD_TESTING=OFF
#        -DUSE_SYSTEM_DEPENDENCIES=ON
)

vcpkg_cmake_install()
