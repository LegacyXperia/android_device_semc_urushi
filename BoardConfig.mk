-include device/semc/mogami-common/BoardConfigCommon.mk
-include vendor/semc/urushi/BoardConfigVendor.mk

# Kernel
TARGET_KERNEL_CONFIG := nAa_urushi_defconfig

# Sensors
SOMC_CFG_SENSORS_ACCEL_BMA150_INPUT := yes
SOMC_CFG_SENSORS_PROXIMITY_APDS9700 := yes

TARGET_OTA_ASSERT_DEVICE := ST18i,ST18a,urushi

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/semc/urushi/bluedroid
