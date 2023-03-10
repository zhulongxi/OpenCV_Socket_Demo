#ifndef SERVERSOCKET_H
#define SERVERSOCKET_H

#include <netinet/in.h> // sockaddr_in
#include <string>
class ServerSocket
{
private:
    /* data */
    int socket_fd;
    struct sockaddr_in  serveraddr;
public:
    ServerSocket(std::string address, int port);
    ~ServerSocket();
    void Receive();
    void threadfunction(int connect_fd);
};

#endif