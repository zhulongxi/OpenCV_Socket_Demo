#include "ServerSocket.h"
#include <sys/socket.h>
#include <iostream> 
#include <string.h> // memeset初始化
#include <arpa/inet.h> // inet函数
#include <unistd.h> // close(fd)
#include <string>

ServerSocket::ServerSocket(std::string address, int port) {
    // 创建套接字
    socket_fd = socket(AF_INET, SOCK_STREAM, 0);
    if(socket_fd == -1) {
        std::cout << "create socket error: " << errno << std::endl;
        exit(0);
    }

    // 绑定套接字
    memset(&servaddr, 0, sizeof(servaddr));
    servaddr.sin_family = AF_INET;
    servaddr.sin_addr.s_addr = inet_addr(address.c_str());
    servaddr.sin_port = htons(port);
    if( bind(socket_fd, (struct sockaddr*)&servaddr, sizeof(servaddr)) == -1) {
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
    close(connect_fd);
    close(socket_fd);
}

void ServerSocket::Receive() {
    while(true) {
        connect_fd = accept(socket_fd, (struct sockaddr*)NULL, NULL);
        if(connect_fd == -1) {
            std::cout << "accept socket error: " << errno << std::endl;
            exit(0);
        }
        else {
            std::cout << "client connected!" << std::endl;
        }

        
    }
}