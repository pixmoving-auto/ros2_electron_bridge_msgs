cmake_minimum_required(VERSION 3.8)
project(ros2_electron_bridge_msgs)

# find dependencies
find_package(ament_cmake_auto REQUIRED)
ament_auto_find_build_dependencies()

# Default to C++14
if(NOT CMAKE_CXX_STANDARD)
  set(CMAKE_CXX_STANDARD 14)
  set(CMAKE_CXX_STANDARD_REQUIRED ON)
  set(CMAKE_CXX_EXTENSIONS OFF)
endif()

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# ROS2 interface
rosidl_generate_interfaces(${PROJECT_NAME}
# ros2 msg
  "msg/V2dVehicleInfo.msg"
  "msg/Station.msg"
  "msg/V2dAllStationInfo.msg"
  "msg/V2dCurrentStationInfo.msg"
# ros2 srv
  DEPENDENCIES
    builtin_interfaces
    std_msgs
    geometry_msgs
)

ament_auto_package()
