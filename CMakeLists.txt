# 最低版本需求
cmake_minimum_required(VERSION 2.6) 
# 项目名称
project(TEST) 

# 将.目录下所有源文件和头文件加入变量SRC_LIST
aux_source_directory(. SRC_LIST) 

# 添加生成可执行文件的保存目录,不会保存中间产物，如果不指定该目录则和中间产物保存在一起
# 会放在build/bin里，但是上面添加目录的时候就是正常的./
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_BINARY_DIR}/bin )

# 添加头文件
include_directories(${PROJECT_SOURCE_DIR}/include)

# 这里将子目录条件到工程，并指定编译的输出产物，默认输出产物保存到build/src文件夹下，
# 如果不指定可行文件保存路径同样也会保存到该路径下
add_subdirectory(src)

# add_executable(test ${SRC_LIST}) # 使用SRC_LIST的文件生成可执行文件test
add_executable(main main.cpp)

# 查找opencv required包
find_package(OpenCV REQUIRED) 
# test目标文件需要一个目标链接库OpenCV_LIBS
target_link_libraries(main ${OpenCV_LIBS} ) 

# 添加链接库
# 把子目录集src的编译成的库文件链接到这里
target_link_libraries(main add)