#include <ros/ros.h>
#include <scn_library/scn_core.h>


void saveStateCb(uint8_t reconType) {
    ROS_INFO("saveStateCb %s", __FILE__);
}

bool reconModeCb(uint8_t reconType, uint8_t command) {
    ROS_INFO("reconModeCb %s", __FILE__);
}


int main(int argc, char** argv)
{
    ros::scnInit(argc, argv, "init_test", 0, saveStateCb, reconModeCb);
    ros::NodeHandle nh_;

  ros::spin();

  return 0;
}

