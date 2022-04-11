# 如何运行？
`./2_cmake_demo/script/build_main.sh `

# 1、添加 & 构建 子目录，子目录中有CMakeLists.txt
`add_subdirectory`

# 2、config.h.in
cmake 来宏定义控制变量, 在生成目录中生成 config.h.  
通过cmake option选项控制宏定义：  
`#cmakedefine HAVE_POW  `  
通过cmake set函数控制宏定义【set (Demo_VERSION_MAJOR 1)】：  
`#define Demo_VERSION_MAJOR @Demo_VERSION_MAJOR@  `


# 3、添加测试用例
```
enable_testing()
add_test (test_5_2 demo 5 2)  
set_tests_properties (test_5_2   
    PROPERTIES PASS_REGULAR_EXPRESSION "is 25")  
```

构建完后需要运行 make test  

# 4、include cmakelist.txt 所在目录 & build 目录
`set (CMAKE_INCLUDE_CURRENT_DIR ON)  `
基本流程：  
```cmake_minimum_required (VERSION 2.8)  
project (Demo1)  
add_executable(Demo main.cc)  
target_link_libraries (demo  ${EXTRA_LIBS})
target_include_directories (demo PUBLIC ${INCLUDE_DIRS}) 
``` 


# 5、指定 MathFunctions 库的安装路径
```
install (TARGETS MathFunctions DESTINATION lib)         # lib path
install (FILES MathFunctions.h DESTINATION include)     # include path
```
# 6、生成CPack安装包
```
include (InstallRequiredSystemLibraries)
set (CPACK_RESOURCE_FILE_LICENSE
  "${CMAKE_CURRENT_SOURCE_DIR}/License.txt")
set (CPACK_PACKAGE_VERSION_MAJOR "${Demo_VERSION_MAJOR}")
set (CPACK_PACKAGE_VERSION_MINOR "${Demo_VERSION_MINOR}")
include (CPack)
```
运行cpack
