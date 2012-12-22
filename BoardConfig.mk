-include device/semc/mogami-common/BoardConfigCommon.mk
-include vendor/semc/urushi/BoardConfigVendor.mk

TARGET_KERNEL_SOURCE := kernel/semc/msm7x30
TARGET_KERNEL_CONFIG := cyanogen_urushi_defconfig
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.4.3

TARGET_RECOVERY_INITRC := device/semc/urushi/recovery/init.rc

SENSORS_COMPASS_AK8975 := true
SENSORS_ACCEL_BMA150_INPUT := true
SENSORS_ACCEL_BMA250_INPUT := false
SENSORS_PROXIMITY_APDS9700 := true
SENSORS_PRESSURE_BMP180 := false

TARGET_OTA_ASSERT_DEVICE := ST18i,ST18a,urushi
