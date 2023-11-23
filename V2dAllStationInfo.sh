#!/bin/bash
SCRIPT_DIR=$(cd "$(dirname "$0")" && pwd)

source ../install/setup.bash

ros2 topic pub --once /app/display/all_station_info ros2_electron_bridge_msgs/msg/V2dAllStationInfo  '
{
header: {stamp: now, frame_id: "frame"}, 
stations: [
    {
      order: 1,
      name: "name1",
    },
    {
      order: 2,
      name: "name2",
    },
    {
      order: 3,
      name: "name3",
    },
    {
      order: 4,
      name: "name4",
    },
    {
      order: 5,
      name: "name5",
    },
    {
      order: 6,
      name: "name6",
    }
  ]
}'