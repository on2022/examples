cmake_minimum_required(VERSION 3.4)
project(test_backward)

# #设定编译参数
set(CMAKE_CXX_STANDARD 14)
set(CMAKE_BUILD_TYPE "Debug")   # 必须Debug模式
# 设置C++编译参数
set(CMAKE_CXX_FLAGS "-std=c++14 -g ${CMAKE_CXX_FLAGS}")

add_subdirectory(${CMAKE_SOURCE_DIR}/backward-cpp)

# This will add backward.cpp to your target
add_executable(main src/test.cpp ${BACKWARD_ENABLE})

# This will add libraries, definitions and include directories needed by backward
# by setting each property on the target.
add_backward(main)