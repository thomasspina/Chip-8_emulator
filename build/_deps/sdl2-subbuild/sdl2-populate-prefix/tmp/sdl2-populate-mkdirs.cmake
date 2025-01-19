# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION ${CMAKE_VERSION}) # this file comes with cmake

# If CMAKE_DISABLE_SOURCE_CHANGES is set to true and the source directory is an
# existing directory in our source tree, calling file(MAKE_DIRECTORY) on it
# would cause a fatal error, even though it would be a no-op.
if(NOT EXISTS "C:/Code Data/chip-8_emulator/build/_deps/sdl2-src")
  file(MAKE_DIRECTORY "C:/Code Data/chip-8_emulator/build/_deps/sdl2-src")
endif()
file(MAKE_DIRECTORY
  "C:/Code Data/chip-8_emulator/build/_deps/sdl2-build"
  "C:/Code Data/chip-8_emulator/build/_deps/sdl2-subbuild/sdl2-populate-prefix"
  "C:/Code Data/chip-8_emulator/build/_deps/sdl2-subbuild/sdl2-populate-prefix/tmp"
  "C:/Code Data/chip-8_emulator/build/_deps/sdl2-subbuild/sdl2-populate-prefix/src/sdl2-populate-stamp"
  "C:/Code Data/chip-8_emulator/build/_deps/sdl2-subbuild/sdl2-populate-prefix/src"
  "C:/Code Data/chip-8_emulator/build/_deps/sdl2-subbuild/sdl2-populate-prefix/src/sdl2-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "C:/Code Data/chip-8_emulator/build/_deps/sdl2-subbuild/sdl2-populate-prefix/src/sdl2-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "C:/Code Data/chip-8_emulator/build/_deps/sdl2-subbuild/sdl2-populate-prefix/src/sdl2-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
