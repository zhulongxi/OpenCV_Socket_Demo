#include "include/ClientSocket.h"
#include <string>

int main(int argc, char **argv) {

    // 初始化服务端
    ClientSocket client("127.0.0.1", 8000);
    client.Send();
    
	return 0;
}