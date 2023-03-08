#ifndef CLIENTSOCKET_H
#define CLIENTSOCKET_H

#include <netinet/in.h> // sockaddr_in
#include <string>
class ClientSocket
{
private:
    /* data */
    int socket_fd;
    struct sockaddr_in  serveraddr;
public:
    ClientSocket(std::string address, int port);
    ~ClientSocket();
    void Send();
};

#endif 