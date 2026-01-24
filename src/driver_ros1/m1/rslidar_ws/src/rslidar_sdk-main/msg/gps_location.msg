std_msgs/Header header	#消息头	
float64 lat	#纬度	北纬，单位：度
float64 lon	#经度	东经，单位：度
float32 alt #高度   单位：m
float32 base_len #基线长度  单位：m
float32 speed	#速度	单位：km/h
float32 heading	#方向角	单位：度  真北坐标系
float32 pitch	#俯仰角	单位：度
int16 sat_cnt	#卫星数	
int16 loc_status	#定位状态: GPS状态， 0初始化， 1单点定位， 2码差分， 3无效PPS， 4固定解，
                      # 5浮点解， 6正在估算 7，人工输入固定值， 8模拟模式， 9WAAS差分
