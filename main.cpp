#include "include/ServerSocket.h"
#include "include/YOLO.h"
#include <string>
#include <csignal>

// 初始化服务端，同时方便处理中断信号，释放资源，防止内存泄漏
static ServerSocket server("127.0.0.1", 8000);

void signalHandler( int signum ) {
    std::cout << "Interrupt signal (" << signum << ") received." << std::endl;
    // 清理并关闭
    // 终止程序  
    server.~ServerSocket();
    exit(signum);  
 
}

int main(int argc, char **argv) {

    // 初始化路径
    std::string classlistpath = "../image/classes.txt";
    std::string netpath = "../onnx/yolov5s.onnx";

    // 是否使用GPU推理
    bool is_cuda = argc > 1 && strcmp(argv[1], "cuda") == 0;

    // 定义网络并检测
    YOLO net;
    net.Init_Class(classlistpath);
    net.Init_Net(netpath, is_cuda);
    
    // 注册中断信号处理函数
    signal(SIGINT, signalHandler); 
    // 服务端开始接收
    server.Receive(&net);
    
	return 0;
}