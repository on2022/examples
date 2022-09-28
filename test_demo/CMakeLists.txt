# CMake 最低版本号要求
cmake_minimum_required (VERSION 2.8)

# 项目信息
project (cmake_demo)

# 查找当前目录下的所有源文件
# 并将名称保存到 DIR_SRCS 变量
aux_source_directory(src DIR_SRCS)
include_directories(testlib)

# 编译子文件夹
add_subdirectory(testlib)

# 指定生成目标
add_executable(demo ${DIR_SRCS})
# 链接库
target_link_libraries(demo testlib)


