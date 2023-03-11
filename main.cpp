#include "include/ServerSocket.h"
#include "include/YOLO.h"
#include <string>
#include <csignal>

// 初始化服务端，同时方便处理中断信号，释放资源，防止内存泄漏
static ServerSocket server("127.0.0.1", 8000);

void Draw(YOLO& net, cv::Mat& image) {
    // 获取检测结果
    std::vector<Detection> output = net.GetOutput();
    std::vector<std::string> class_list = net.GetClassList();
	int detections = output.size();
    // std::cout << detections << std::endl;
    const std::vector<cv::Scalar> colors = { cv::Scalar(255, 255, 0), cv::Scalar(0, 255, 0), cv::Scalar(0, 255, 255), cv::Scalar(255, 0, 0) };

    // 绘制检测框
	for (int i = 0; i < detections; ++i)
	{

		auto detection = output[i];
		auto box = detection.box;
		auto classId = detection.class_id;
		const auto color = colors[classId % colors.size()];
		cv::rectangle(image, box, color, 3);

		cv::rectangle(image, cv::Point(box.x, box.y - 20), cv::Point(box.x + box.width, box.y), color, cv::FILLED);
		cv::putText(image, class_list[classId].c_str(), cv::Point(box.x, box.y - 5), cv::FONT_HERSHEY_SIMPLEX, 0.5, cv::Scalar(0, 0, 0));
	}
}

void signalHandler( int signum ) {
    std::cout << "Interrupt signal (" << signum << ") received." << std::endl;
    // 清理并关闭
    // 终止程序  
    server.~ServerSocket();
    exit(signum);  
 
}

int main(int argc, char **argv) {

    // 初始化路径
    std::string imagepath = "../image/1.jpg";
    std::string classlistpath = "../image/classes.txt";
    std::string netpath = "../onnx/yolov5s.onnx";
    cv::Mat image = cv::imread(imagepath);

    // 是否使用GPU推理
    bool is_cuda = argc > 1 && strcmp(argv[1], "cuda") == 0;

    // 定义网络并检测
    YOLO net;
    net.Init_Class(classlistpath);
    net.Init_Net(netpath, is_cuda);
    net.Detect(image);

    // 绘制检测框
    Draw(net, image);
    // 保存结果
    cv::imwrite("./1.jpg", image);
    
    // 注册中断信号处理函数
    signal(SIGINT, signalHandler); 
    // 服务端开始接收
    server.Receive();
    
	return 0;
}