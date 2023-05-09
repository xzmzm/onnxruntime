REM add the following to build\windows_x86\Release\_deps\microsoft_wil-src\include\wil\result_macros.h
REM #ifndef _Translates_last_error_to_HRESULT_
REM #define _Translates_last_error_to_HRESULT_
REM #endif

REM #ifndef _Translates_Win32_to_HRESULT_
REM #define _Translates_Win32_to_HRESULT_(x)
REM #endif

REM #ifndef _Translates_NTSTATUS_to_HRESULT_
REM #define _Translates_NTSTATUS_to_HRESULT_(x)
REM #endif


REM SET CMAKE_BUILD_PARALLEL_LEVEL=3
build --build_dir build\windows_x86a --config Release --cmake_generator "Visual Studio 17 2022" --x86 --cmake_extra_defines CMAKE_SYSTEM_VERSION:STRING=10.0 --cmake_extra_defines CMAKE_VS_WINDOWS_TARGET_PLATFORM_VERSION:STRING=10.0 --build_shared_lib --enable_msvc_static_runtime --msvc_toolset 14.35.32215 --skip_tests --skip_submodule_sync --parallel 3
REM --skip_submodule_sync