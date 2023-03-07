#include <iostream>
#include <string>
#include <vector>
#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/opencv.hpp>

#include "include/add.h"

int main()
{
    std::vector<int> a1;
    a1.push_back(1);
    a1.at(0);

    // 使用new创建一个std::vector对象，并返回指针
    std::vector<int>* v = new std::vector<int>(5, 0);
    // 使用指针访问成员使用->
    v->push_back(1);
    v->at(0) = 1;
    std::cout << v->size() << std::endl;
    v->pop_back();
    for(int i = 0; i < v->size(); i ++) {
        std::cout << v->at(i) << std::endl;
    }
    delete v;

    // 使用new创建一个std::vector数组，返回数组指针
    std::vector<int>* a = new std::vector<int>[5];
    // a是指针，指向一个数组，a[0]是std::vector
    a[0].push_back(1);
    std::cout << a[0].size();
    a[0].pop_back();
    delete [] a;

    std::cout << "OpenCV Version: " << CV_VERSION << std::endl;
    std::string filename;
    std::cout << "Input ImageName : " << std::endl;
    std::cin >> filename;
	cv::Mat img = cv::imread(filename);
	cv::imwrite("./1440.png", img);
}