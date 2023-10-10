#!/bin/bash
SCRIPT_DIR=$(cd "$(dirname "$0")" && pwd)

source ../install/setup.bash
ros2 topic pub --once /app/display/current_station_info ros2_electron_bridge_msgs/msg/V2dVehicleInfo  '
{
header: {stamp: now, frame_id: "frame"}, 
vehicle_speed_km_per_h: 12,    
vehicle_total_mileage_km: 23,   
vehicle_remain_mileage_km: 34,  
temperature_outside_celsius: 45, 
controller_connected_status: true,  
seatbelt_status_all_fastened: true, 
driving_mode: -1,                  
gear_status: 2,                  
battery_percentage_remaining: 88,  
temperature_inside_celsius: 88,    
vehicle_operational_status: true,
}'