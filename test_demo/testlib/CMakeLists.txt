# CMake 最低版本号要求
cmake_minimum_required (VERSION 2.8)

# 项目信息
project (testlib)

# 查找当前目录下的所有源文件
# 并将名称保存到 DIR_SRCS 变量
aux_source_directory(. TESTLIB_DIR)
include_directories(.)

aux_source_directory(sub1 TESTLIB_DIR)
include_directories(sub1)

# 指定生成目标
add_library(testlib STATIC ${TESTLIB_DIR})
