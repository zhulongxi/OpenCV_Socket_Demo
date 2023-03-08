# 查找当前目录下的所有源文件,并将名称保存到 DIR_LIB_SRCS 变量
 
aux_source_directory(. DIR_LIB_SRCS)
 
# 添加目录
include_directories(../include)
 
# 这里是设置保存库文件的路径的，不保存中间产物，库文件最后保存在build/lib中
set(LIBRARY_OUTPUT_PATH ${PROJECT_BINARY_DIR}/lib)
 
# 生成链接库
add_library(source ${DIR_LIB_SRCS})
 
message(STATUS "----------生成静态库完成----------" ${PROJECT_SOURCE_DIR}/source)