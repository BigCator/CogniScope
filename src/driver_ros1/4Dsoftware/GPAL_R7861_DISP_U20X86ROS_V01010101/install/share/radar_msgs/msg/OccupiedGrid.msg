Header header                   # Includes measurement timestamp and coordinate frame.
uint32 radarID                  # radar ID
uint32 frameCnt                 # frame cnt in radar
uint32 occupiedNum              # number of grid
float32 grid_x_length           # length of grid along x axis
float32 grid_y_length           # length of grid along y axis
float32[] grid_x                # Position x of grid, unit: m
float32[] grid_y                # Position y of grid, unit: m
float32 reserved_a
float32 reserved_b
float32 reserved_c