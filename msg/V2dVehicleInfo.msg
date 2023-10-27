
# constants for common
int8 UNKNOWN=-1

# constants for driving_mode
int8 MANUAL=0
int8 AUTOPILOT=1
int8 REMOTE=2

# constants for gear_status
int8 PARK=0
int8 REVERSE=1
int8 DRIVE=2


std_msgs/Header header 
int32 vehicle_speed_km_per_h    # Vehicle Speed in km/h
int32 vehicle_total_mileage_km  # Total Mileage in km
int32 vehicle_remain_mileage_km # Remaining Mileage in km
int32 temperature_outside_celsius # Temperature Outside in Celsius
bool controller_connected_status  # Controller Connection Status (true: connected, false: not connected)
bool seatbelt_status_all_fastened # Seatbelt Status (true: all fastened, false: not all fastened)
int8 driving_mode                 # Driving Mode (0: Remote, 1: Autopilot, 2: Remote Pilot, -1: Unknown)
int8 gear_status                  # Gear Status (0: P, 1: R, 2: D, -1: Unknown)
int32 battery_percentage_remaining # Remaining Battery Percentage
int32 temperature_inside_celsius   # Temperature Inside in Celsius
bool vehicle_operational_status    # Vehicle Operational Status (true: operational, false: not operational)
