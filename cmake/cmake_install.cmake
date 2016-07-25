# Install script for directory: /home/chunchuan/thesis/cunnx

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/chunchuan/torch/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/../../../../usr/local/lib/libcunnx.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/../../../../usr/local/lib/libcunnx.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/../../../../usr/local/lib/libcunnx.so"
         RPATH "$ORIGIN/../lib:/home/chunchuan/torch/install/lib:/usr/local/cuda/lib64")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/../../../../usr/local/lib" TYPE MODULE FILES "/home/chunchuan/thesis/cunnx/cmake/libcunnx.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/../../../../usr/local/lib/libcunnx.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/../../../../usr/local/lib/libcunnx.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/../../../../usr/local/lib/libcunnx.so"
         OLD_RPATH "/home/chunchuan/torch/install/lib:/usr/local/cuda/lib64:::::::::::::::"
         NEW_RPATH "$ORIGIN/../lib:/home/chunchuan/torch/install/lib:/usr/local/cuda/lib64")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/../../../../usr/local/lib/libcunnx.so")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/../../../../usr/local/lua/cunnx" TYPE FILE FILES
    "/home/chunchuan/thesis/cunnx/MultinomialStatistics.lua"
    "/home/chunchuan/thesis/cunnx/WindowGate.lua"
    "/home/chunchuan/thesis/cunnx/TypeDecorator.lua"
    "/home/chunchuan/thesis/cunnx/LinearNoBias.lua"
    "/home/chunchuan/thesis/cunnx/init.lua"
    "/home/chunchuan/thesis/cunnx/WindowMixture.lua"
    "/home/chunchuan/thesis/cunnx/BlockSparse.lua"
    "/home/chunchuan/thesis/cunnx/NoisyReLU.lua"
    "/home/chunchuan/thesis/cunnx/WindowGate2.lua"
    "/home/chunchuan/thesis/cunnx/LazyKBest.lua"
    "/home/chunchuan/thesis/cunnx/Sort.lua"
    "/home/chunchuan/thesis/cunnx/BlockMixture.lua"
    "/home/chunchuan/thesis/cunnx/WindowSparse.lua"
    "/home/chunchuan/thesis/cunnx/CudaQuickProduct.lua"
    "/home/chunchuan/thesis/cunnx/test/test.lua"
    )
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

file(WRITE "/home/chunchuan/thesis/cunnx/cmake/${CMAKE_INSTALL_MANIFEST}" "")
foreach(file ${CMAKE_INSTALL_MANIFEST_FILES})
  file(APPEND "/home/chunchuan/thesis/cunnx/cmake/${CMAKE_INSTALL_MANIFEST}" "${file}\n")
endforeach()
