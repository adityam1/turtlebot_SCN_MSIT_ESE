#include <ros/ros.h>
#include <scn_library/scn_core.h>



void saveStateCb(void) {
}

void reconModeCb(void) {
}

int main(int argc, char** argv)
{
    ros::scnInit(argc, argv, "init_test", 0, saveStateCb, reconModeCb);
    ros::NodeHandle nh_;

  ros::spin();

  return 0;
}

