#include <sys/socket.h>
#include <iostream> 
#include <string.h> // memeset初始化
#include <arpa/inet.h> // inet函数
#include <unistd.h> // close(fd)
#include <string>
#include <thread>
#include <fstream>

#include "ServerSocket.h"
#include "YOLO.h"

ServerSocket::ServerSocket(std::string address, int port) {
    // 创建套接字
    socket_fd = socket(AF_INET, SOCK_STREAM, 0);
    if(socket_fd == -1) {
        std::cout << "create socket error: " << errno << std::endl;
        exit(0);
    }

    // 绑定套接字
    memset(&serveraddr, 0, sizeof(serveraddr));
    serveraddr.sin_family = AF_INET;
    serveraddr.sin_addr.s_addr = inet_addr(address.c_str());
    serveraddr.sin_port = htons(port);
    if( bind(socket_fd, (struct sockaddr*)&serveraddr, sizeof(serveraddr)) == -1) {
        std::cout << "bind socket error: " << errno << std::endl;
		exit(0);
    }

    // 监听客户端
    if( listen(socket_fd, 10) == -1) {
        std::cout << "listen socket error: " << errno << std::endl;
		exit(0);
    }

    std::cout << "waiting for client's request..." << std::endl;
}

ServerSocket::~ServerSocket() {
    close(socket_fd);
}

void ServerSocket::Receive(YOLO* net) {
    while(true) {
        int connect_fd;
        connect_fd = accept(socket_fd, (struct sockaddr*)NULL, NULL);
        if(connect_fd == -1) {
            std::cout << "accept socket error: " << errno << std::endl;
            break;
        }
        else {
            std::cout << "client connected!" << std::endl;
        }
        std::thread th(&ServerSocket::threadfunction, this, connect_fd, net);
        if(th.joinable()) {
            std::cout << "Tcp thread " << th.get_id() << " is joinable!" << std::endl;
            th.detach();
        }
    }
}

void Draw(YOLO* net, cv::Mat& image) {
    // 获取检测结果
    std::vector<Detection> output = net->GetOutput();
    std::vector<std::string> class_list = net->GetClassList();
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

void ServerSocket::threadfunction(int connect_fd, YOLO* net) {
    int n;
    char buff[1024];
    // 使用线程id生成唯一图片
    std::ostringstream ss;
    ss << std::this_thread::get_id();
    std::string idstr = ss.str();
    const int MAXLINE = 1024;
    while(1) {		
		//接受客户端传过来的数据
        std::string imagepath = idstr + ".jpg";
        memset(buff, 0, sizeof(buff));
	    // n = recv(connect_fd, buff, MAXLINE, 0);
        std::fstream f;
        f.open(imagepath.c_str(), std::ios::out | std::ios::binary);
        if(f.is_open() == false) {
            std::cout << "File open failed!" << std::endl;
            close(socket_fd);
            exit(1);
        }
        while(true) {
            n = recv(connect_fd, buff, MAXLINE, 0);
            f.write(buff, n);
            if(n < MAXLINE) break;
        }
        f.close();
        if(n <= 0) {
            std::cout << "client close" << std::endl;
            close(connect_fd);
            break;
        }
        // 读取图片
        cv::Mat image = cv::imread(imagepath.c_str());
        // 检测图片
        net->Detect(image);
        // 绘制检测框
        Draw(net, image);
        // 保存结果
        //imagepath = idstr + "result.jpg";
        cv::imwrite(imagepath.c_str(), image);
	
	    // 给客户端发送消息
        // std::cout << "send msg to client:" ;
        // 从stdin获取输入
	    // fgets(sendline, MAXLINE, stdin);
        char sendline[1024] = {"Hello World!\n"};
	    if( send(connect_fd, sendline, strlen(sendline), 0) <= 0) {
            std::cout << "send msg error: " << errno << std::endl;
		    break;
	    }	
        break;
    }
    close(connect_fd);
}