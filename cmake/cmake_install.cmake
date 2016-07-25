# Install script for directory: /home/chunchuan/cunnx

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/../../../../usr/local/lib" TYPE MODULE FILES "/home/chunchuan/cunnx/cmake/CMakeFiles/CMakeRelink.dir/libcunnx.so")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/../../../../usr/local/lua/cunnx" TYPE FILE FILES
    "/home/chunchuan/cunnx/MultinomialStatistics.lua"
    "/home/chunchuan/cunnx/WindowGate.lua"
    "/home/chunchuan/cunnx/TypeDecorator.lua"
    "/home/chunchuan/cunnx/LinearNoBias.lua"
    "/home/chunchuan/cunnx/init.lua"
    "/home/chunchuan/cunnx/WindowMixture.lua"
    "/home/chunchuan/cunnx/BlockSparse.lua"
    "/home/chunchuan/cunnx/NoisyReLU.lua"
    "/home/chunchuan/cunnx/WindowGate2.lua"
    "/home/chunchuan/cunnx/LazyKBest.lua"
    "/home/chunchuan/cunnx/Sort.lua"
    "/home/chunchuan/cunnx/BlockMixture.lua"
    "/home/chunchuan/cunnx/WindowSparse.lua"
    "/home/chunchuan/cunnx/CudaQuickProduct.lua"
    "/home/chunchuan/cunnx/test/test.lua"
    )
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

file(WRITE "/home/chunchuan/cunnx/cmake/${CMAKE_INSTALL_MANIFEST}" "")
foreach(file ${CMAKE_INSTALL_MANIFEST_FILES})
  file(APPEND "/home/chunchuan/cunnx/cmake/${CMAKE_INSTALL_MANIFEST}" "${file}\n")
endforeach()
