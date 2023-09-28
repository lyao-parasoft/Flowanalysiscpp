cmake_minimum_required(VERSION 3.10)

project(Flowanalysiscpp)

set(CMAKE_EXPORT_COMPILE_COMMANDS 1)

if(CPPTEST_COVERAGE)
  include(cpptest-coverage.cmake)
endif()

if(CPPTEST_STATIC)
  include(../../integration/cmake/cpptest-static-exp.cmake)
endif()

add_executable(flowanalysiscpp
    DeadLock.cpp
    DivisionByZero.cpp
    MemoryLeak.cpp
    NullPointer.cpp)
