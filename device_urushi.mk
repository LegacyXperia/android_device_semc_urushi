$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

# proprietary side of the device
$(call inherit-product-if-exists, vendor/semc/urushi/urushi-vendor.mk)


# Discard inherited values and use our own instead.
PRODUCT_NAME := urushi
PRODUCT_DEVICE := urushi
PRODUCT_MODEL := urushi

TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel
PRODUCT_COPY_FILES += \
    $(TARGET_PREBUILT_KERNEL):kernel

-include device/semc/mogami-common/mogami.mk

# These is the hardware-specific overlay, which points to the location
# of hardware-specific resource overrides, typically the frameworks and
# application settings that are stored in resourced.
DEVICE_PACKAGE_OVERLAYS += device/semc/urushi/overlay

# These are the hardware-specific configuration files
#PRODUCT_COPY_FILES += \
#	device/semc/urushi/prebuilt/media_profiles.xml:system/etc/media_profiles.xml

# Init files
PRODUCT_COPY_FILES += \
    device/semc/urushi/prebuilt/init.semc.usb.rc:root/init.semc.usb.rc \
    device/semc/urushi/prebuilt/bootrec-device:root/sbin/bootrec-device \
    device/semc/urushi/prebuilt/hw_config.sh:system/etc/hw_config.sh \
    device/semc/urushi/prebuilt/pre_hw_config.sh:root/pre_hw_config.sh \
    device/semc/msm7x30-common/prebuilt/logo_H.rle:root/logo.rle \
    device/semc/urushi/recovery.fstab:root/recovery.fstab

# semc msm7x30 uses high-density artwork where available
PRODUCT_LOCALES += hdpi

#Offline charging animation
PRODUCT_COPY_FILES += \
    device/semc/msm7x30-common/prebuilt/animations/charging_animation_01_H.png:system/semc/chargemon/data/charging_animation_01.png \
    device/semc/msm7x30-common/prebuilt/animations/charging_animation_02_H.png:system/semc/chargemon/data/charging_animation_02.png \
    device/semc/msm7x30-common/prebuilt/animations/charging_animation_03_H.png:system/semc/chargemon/data/charging_animation_03.png \
    device/semc/msm7x30-common/prebuilt/animations/charging_animation_04_H.png:system/semc/chargemon/data/charging_animation_04.png \
    device/semc/msm7x30-common/prebuilt/animations/charging_animation_05_H.png:system/semc/chargemon/data/charging_animation_05.png \
    device/semc/msm7x30-common/prebuilt/animations/charging_animation_06_H.png:system/semc/chargemon/data/charging_animation_06.png \
    device/semc/msm7x30-common/prebuilt/animations/charging_animation_07_H.png:system/semc/chargemon/data/charging_animation_07.png
#    device/semc/msm7x30-common/prebuilt/animations/charging_animation_blank_H.png:system/semc/chargemon/data/charging_animation_blank.png

#LCD DENSITY
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=240
