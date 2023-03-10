#include "ServerSocket.h"
#include <sys/socket.h>
#include <iostream> 
#include <string.h> // memeset初始化
#include <arpa/inet.h> // inet函数
#include <unistd.h> // close(fd)
#include <string>
#include <thread>

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

void ServerSocket::Receive() {
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
        std::thread th(&ServerSocket::threadfunction, this, connect_fd);
        if(th.joinable()) {
            std::cout << "Tcp thread " << th.get_id() << " is joinable!" << std::endl;
            th.detach();
        }
    }
}

void ServerSocket::threadfunction(int connect_fd) {
    int n;
    char buff[1024];
    //char sendline[1024] = {"Hello World!\n\0"};
    const int MAXLINE = 1024;
    while(1) {		
		//接受客户端传过来的数据
        memset(buff, 0, sizeof(buff));
	    n = recv(connect_fd, buff, MAXLINE, 0);
        if(n <= 0) {
            std::cout << "client close" << std::endl;
            close(connect_fd);
            break;
        }
	    buff[n] = '\0';
        std::cout << "recv msg from client: " << buff << std::endl;
	
	    // 给客户端发送消息
        // std::cout << "send msg to client:" ;
        // 从stdin获取输入
	    // fgets(sendline, MAXLINE, stdin);
        char sendline[1024] = {"Hello World!\n"};
	    if( send(connect_fd, sendline, strlen(sendline), 0) <= 0) {
            std::cout << "send msg error: " << errno << std::endl;
		    break;
	    }	
    }
    close(connect_fd);
}