#ifndef SERVERSOCKET_H
#define SERVERSOCKET_H

#include <netinet/in.h> // sockaddr_in
#include <string>
class ServerSocket
{
private:
    /* data */
    int    socket_fd, connect_fd;
    struct sockaddr_in  servaddr;
public:
    ServerSocket(std::string address, int port);
    ~ServerSocket();
    void Receive();
};

#endif