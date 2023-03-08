#include "ClientSocket.h"
#include <sys/socket.h>
#include <iostream> 
#include <string.h> // memeset初始化
#include <arpa/inet.h> // inet函数
#include <unistd.h> // close(fd)
#include <string>

ClientSocket::ClientSocket(std::string address, int port) {
    // 创建套接字
    socket_fd = socket(AF_INET, SOCK_STREAM, 0);
    if(socket_fd == -1) {
        std::cout << "create socket error: " << errno << std::endl;
        exit(0);
    }

    // 连接套接字
    memset(&serveraddr, 0, sizeof(serveraddr));
    serveraddr.sin_family = AF_INET;
    serveraddr.sin_addr.s_addr = inet_addr(address.c_str());
    serveraddr.sin_port = htons(port);
    if( connect(socket_fd, (struct sockaddr*)&serveraddr, sizeof(serveraddr)) == -1) {
        std::cout << "bind socket error: " << errno << std::endl;
		exit(0);
    }
    else std::cout << "connect success!" << std::endl;
}

ClientSocket::~ClientSocket() {
    close(socket_fd);
}

void ClientSocket::Send() {
    int n;
    char buff[1024];
    char sendline[1024];
    const int MAXLINE = 1024;
    while (1)
	{
		std::cout << "send message: ";
		std::cin >> sendline;
		n = send(socket_fd, sendline, MAXLINE, 0);
		if (n <= 0)
		{
			std::cout << "send failed!" << std::endl;
			break;
		}
        memset(buff, 0, sizeof(buff));
		n = recv(socket_fd, buff, 1024, 0);
		if (n <= 0)
		{
			std::cout << "接受失败！" << std::endl;
			break;
		}
		else
		{
			std::cout << "服务端信息:" << buff;// << std::endl;
		}

	}
}