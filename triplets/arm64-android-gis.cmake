# Android ARM64 triplet for GDAL and its native dependencies.
set(VCPKG_TARGET_ARCHITECTURE arm64)
set(VCPKG_CRT_LINKAGE dynamic)
set(VCPKG_LIBRARY_LINKAGE dynamic)
set(VCPKG_CMAKE_SYSTEM_NAME Android)

if(NOT DEFINED ENV{ANDROID_NDK_HOME})
  message(FATAL_ERROR "ANDROID_NDK_HOME must point to the installed Android NDK")
endif()

set(VCPKG_CHAINLOAD_TOOLCHAIN_FILE "$ENV{ANDROID_NDK_HOME}/build/cmake/android.toolchain.cmake")
set(VCPKG_CMAKE_CONFIGURE_OPTIONS
    "-DANDROID_ABI=arm64-v8a"
    "-DANDROID_PLATFORM=android-24"
    "-DANDROID_STL=c++_shared"
)
