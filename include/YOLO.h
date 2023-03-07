#ifndef YOLO_H
#define YOLO_H

#include <opencv2/opencv.hpp>
#include <vector>
#include <string>

struct Detection
{
	int class_id;
	float confidence;
	cv::Rect box;
};

class YOLO
{
private:
    /* data */
    std::vector<std::string> class_list;
    cv::dnn::Net net;
    std::vector<Detection> output;
    float INPUT_WIDTH;
    float INPUT_HEIGHT;
    float SCORE_THRESHOLD;
    float NMS_THRESHOLD;
    float CONFIDENCE_THRESHOLD;

    cv::Mat format_yolov5(const cv::Mat& source);
public:
    YOLO(/* args */);
    void Init_Class(std::string classtxtpath);
    void Init_Net(std::string netpath, bool is_cuda = false);
    void Detect(cv::Mat& image);
    std::vector<Detection> GetOutput();
    std::vector<std::string> GetClassList();
};

#endif
