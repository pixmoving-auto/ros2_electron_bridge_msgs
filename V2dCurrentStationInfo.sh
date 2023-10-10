#!/bin/bash
SCRIPT_DIR=$(cd "$(dirname "$0")" && pwd)

source ../install/setup.bash


ros2 topic pub --once /app/display/current_station_info ros2_electron_bridge_msgs/msg/V2dCurrentStationInfo  '
{
header: {stamp: now, frame_id: "frame"}, 
current_station: "current_station",
next_station: "next_station",
estimate_time: 32
}'