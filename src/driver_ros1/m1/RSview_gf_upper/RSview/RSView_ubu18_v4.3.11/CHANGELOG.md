# Changelog

## Unreleased
### Changed

## v4.3.6

### Changed
- Change max distance to 300m
- Transform with unit of degree instead of radian

### Added
- Support multiple point ranges to filter points

## v4.3.2

### Fixed
- show point cloud in case of wrong block_id
- Fix packet loss of online M2 lidar

### Changed
- remove limit of user distances

## v4.3.1

### Added
- Support sensor position

### Fixed
- Fix problem with displaying >10 frames

### Changed
- Rename RSEOS to RSE1

### Removed
- Remove RPM on statusbar

## v4.2.0

### Added
- Show o_ring in spreadsheet
- Show pitch, yaw in spreadsheet for EOS/M2
- Show angles in LaserSelectionDialog
- Save & restor geometry of LaserSelectionDialog

## v4.1.1

### Fixed
- Fix crash in case of wrong packet format
- Fix crash in case of trailing frames (>1)
- Fix problem of cloud seq wrapping

### Changed
- Move combo box of point size  to color toolbar

## v4.1.0

### Added
- Support cloud toolbar
- Show RPM on statusbar
- Support CropReturns 
- Support to save as PCD

### Fixed
- Fix wrong framerate 
- Fix problem of cloud seq wrapping
- Abort opening sensor/pcap file if user cancels
- Fix crash when limit.csv is unavailable
- Fix prolem of saving as LAS

### Changed
- keep selected lasers if not reload RSView and not change lidar type

## v4.0.4

### Added
- Support to save as LAS format
- Support to get device info
- Show setting dialog when open sensor or PCAP

### Changed
- Ouput time as GMT format
- rearrage toolbars
- Update user guide

### Removed
- Save as Position CSV format

## v4.0.3

### Added
- Add license info

### Fixed
- Fix coredump in case of wrong lidar type
- Fix coredump when reopen sensor

## v4.0.2

### Added
- Support to resize point
- Add user guide

### Fixed
- Fix unitialized lidar type

### Removed
- Remove recording functions

## v4.0.1

### Added
- Trial Version. Basic functions are ready.

## v4.0.0

### Added
- Preview version. Based on rs_driver
  
