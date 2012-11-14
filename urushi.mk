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

# Init files
PRODUCT_COPY_FILES += \
    device/semc/urushi/prebuilt/init.semc.usb.rc:root/init.semc.usb.rc \
    device/semc/urushi/prebuilt/pre_hw_config.sh:root/pre_hw_config.sh \
    device/semc/urushi/prebuilt/hw_config.sh:system/etc/hw_config.sh \
    device/semc/msm7x30-common/prebuilt/logo_H.rle:root/logo.rle

# Device specific part for two-stage boot
PRODUCT_COPY_FILES += \
    device/semc/urushi/recovery/bootrec-device:recovery/bootrec-device

# Device specific configs
PRODUCT_COPY_FILES += \
    device/semc/urushi/config/clearpad.idc:system/usr/idc/clearpad.idc \
    device/semc/urushi/config/atdaemon.kl:system/usr/keylayout/atdaemon.kl \
    device/semc/urushi/config/clearpad.kl:system/usr/keylayout/clearpad.kl \
    device/semc/urushi/config/msm_pmic_pwr_key.kl:system/usr/keylayout/msm_pmic_pwr_key.kl \
    device/semc/urushi/config/pm8058-keypad.kl:system/usr/keylayout/pm8058-keypad.kl \
    device/semc/urushi/config/simple_remote.kl:system/usr/keylayout/simple_remote.kl \
    device/semc/urushi/config/als_curve.conf:system/etc/als_curve.conf \
    device/semc/urushi/config/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    device/semc/urushi/config/sensors.conf:system/etc/sensors.conf \
    device/semc/urushi/config/tiwlan.ini:system/etc/tiwlan.ini

$(call inherit-product, device/semc/msm7x30-common/prebuilt/resources-hdpi.mk)

#LCD DENSITY
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=240 \
    com.qc.hdmi_out=false
