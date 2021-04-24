@echo off

set ~=%CD%
set HOME=%CD%
set MY_BIN=D:\Software\__Program\bin
set GIT_BIN=D:\Software\__Program\Git-2.24.0.2-64-bit\bin
set NODE_BIN=D:\Software\__Program\node-v12.13.1-win-x64
set PERL_BIN=D:\Software\__Program\ActivePerl-5.28.1.0000\perl\bin
set CMAKE_BIN=D:\Software\__Program\cmake-3.16.0-rc3-win64-x64\bin
set PATH=%MY_BIN%;%GIT_BIN%;%NODE_BIN%;%PERL_BIN%;%CMAKE_BIN%;%PATH%

rem vim
set PATH=C:\Program Files (x86)\Vim\vim82;%PATH%
rem grep
set PATH=C:\Program Files (x86)\GnuWin32\bin;%PATH%

rem ############################
rem # Windows SDK tools
rem ############################
rem "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Auxiliary\Build\vcvarsall.bat" x64
set WKIT_ROOT=C:\Program Files (x86)\Windows Kits\10
set MSVC_ROOT=C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.23.28105
set MSVC_BIN=%MSVC_ROOT%\bin\Hostx64\x64
set WKIT_BIN=%WKIT_ROOT%\bin\10.0.18362.0\x64\

set PATH=%MSVC_BIN%;%WKIT_BIN%;%PATH%

rem ############################
rem # Windows MINGW
rem ############################
set MINGW_BIN=C:\MinGW\bin
set PATH=%MINGW_BIN%;%PATH%

rem ############################
rem # Android SDK tools
rem ############################
set JAVA_HOME=C:\Program Files\Android\Android Studio\jre
set JAVA_BIN=%JAVA_HOME%\bin
rem set ANDROID_HOME=C:\Users\Ocean\AppData\Local\Android\Sdk
set ANDROID_HOME=E:\Android\SDK
set ASDK_ROOT=%ANDROID_HOME%
set ASDK_TOOLS=%ASDK_ROOT%\tools
set ASDK_TOOLS_BIN=%ASDK_ROOT%\tools\bin
set ASDK_BUILD_TOOLS=%ASDK_ROOT%\build-tools\29.0.2
set ASDK_PLATFORM_TOOLS=%ASDK_ROOT%\platform-tools
set ASDK_EMULATOR=%ASDK_ROOT%\emulator

set PATH=%JAVA_BIN%;%ASDK_EMULATOR%;%PATH%
set PATH=%ASDK_TOOLS%;%ASDK_TOOLS_BIN%;%ASDK_PLATFORM_TOOLS%;%PATH%
set PATH=%ASDK_BUILD_TOOLS%;%PATH%
rem sdkmanager --install "build-tools;29.0.2"
rem sdkmanager --install "platforms;android-29"
rem sdkmanager --install "platform-tools"

rem Set compile vars
rem set INCLUDE=%MSVC_INCLUDE_DIR%
rem set LIB=%MSVC_LIB_DIR%

rem ############################
rem # Print env vars
rem ############################
echo [ENV settings]
echo GIT_BIN=%GIT_BIN%
echo MSVC_BIN=%MSVC_BIN%
echo WKIT_BIN=%WKIT_BIN%
echo ANDROID_HOME=%ANDROID_HOME%
echo JAVA_BIN=%JAVA_BIN%
echo.
echo HOME=%HOME%
echo PATH=%PATH%
echo.

@cmd.exe /k