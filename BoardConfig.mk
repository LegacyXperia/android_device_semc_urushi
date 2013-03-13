-include device/semc/mogami-common/BoardConfigCommon.mk
-include vendor/semc/urushi/BoardConfigVendor.mk

# Kernel
TARGET_KERNEL_SOURCE := kernel/semc/msm7x30
TARGET_KERNEL_CONFIG := cyanogen_urushi_defconfig
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.4.3

# Recovery
TARGET_RECOVERY_INITRC := device/semc/urushi/recovery/init.rc

# Sensors
SOMC_CFG_SENSORS_COMPASS_AK8975 := yes
SOMC_CFG_SENSORS_ACCEL_BMA150_INPUT := yes
SOMC_CFG_SENSORS_PROXIMITY_APDS9700 := yes

TARGET_OTA_ASSERT_DEVICE := ST18i,ST18a,urushi

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/semc/urushi/bluetooth
