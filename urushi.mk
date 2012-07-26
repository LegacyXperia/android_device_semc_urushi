# proprietary side of the device
$(call inherit-product-if-exists, vendor/semc/urushi/urushi-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/semc/urushi/overlay

$(call inherit-product, device/semc/mogami-common/mogami.mk)

$(call inherit-product, device/common/gps/gps_eu_supl.mk)

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml

PRODUCT_AAPT_CONFIG := normal hdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# These are the hardware-specific configuration files
PRODUCT_COPY_FILES += \
    device/semc/urushi/prebuilt/media_profiles.xml:system/etc/media_profiles.xml

# Init files
PRODUCT_COPY_FILES += \
    device/semc/urushi/prebuilt/init.semc.usb.rc:root/init.semc.usb.rc \
    device/semc/urushi/prebuilt/pre_hw_config.sh:root/pre_hw_config.sh \
    device/semc/urushi/prebuilt/hw_config.sh:system/etc/hw_config.sh \
    device/semc/msm7x30-common/prebuilt/logo_H.rle:root/logo.rle \
    device/semc/urushi/prebuilt/bootrec-device:root/sbin/bootrec-device \
    device/semc/urushi/recovery.fstab:root/recovery.fstab

$(call inherit-product, device/semc/msm7x30-common/prebuilt/resources-hdpi.mk)

#LCD DENSITY
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=240 \
    com.qc.hdmi_out=false
