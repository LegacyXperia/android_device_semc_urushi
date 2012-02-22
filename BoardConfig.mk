-include device/semc/mogami-common/BoardConfigCommon.mk
-include vendor/semc/urushi/BoardConfigVendor.mk

BUILD SEMC SENSORS := false
SENSORS_COMPASS_AK897X := true
SENSORS_ACCEL_BMA150_INPUT := true
SENSORS_ACCEL_BMA250_INPUT := false
SENSORS_PROXIMITY_APDS970X := true
SENSORS_PRESSURE_BMP180 := false

#BOARD_FLASH_BLOCK_SIZE := 4096

TARGET_OTA_ASSERT_DEVICE := ST18i,ST18a,urushi
