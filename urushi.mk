# Copyright (C) 2011-2013 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# proprietary side of the device
$(call inherit-product, vendor/semc/urushi/urushi-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/semc/urushi/overlay

$(call inherit-product, device/semc/mogami-common/mogami.mk)

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml

PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Init files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/init.semc.usb.rc:root/init.semc.usb.rc \
    $(LOCAL_PATH)/rootdir/init.recovery.semc.rc:root/init.recovery.semc.rc \
    $(LOCAL_PATH)/rootdir/system/etc/hw_config.sh:system/etc/hw_config.sh

# Device specific configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/system/usr/idc/clearpad.idc:system/usr/idc/clearpad.idc \
    $(LOCAL_PATH)/rootdir/system/usr/keylayout/atdaemon.kl:system/usr/keylayout/atdaemon.kl \
    $(LOCAL_PATH)/rootdir/system/usr/keylayout/clearpad.kl:system/usr/keylayout/clearpad.kl \
    $(LOCAL_PATH)/rootdir/system/usr/keylayout/msm_pmic_pwr_key.kl:system/usr/keylayout/msm_pmic_pwr_key.kl \
    $(LOCAL_PATH)/rootdir/system/usr/keylayout/pm8058-keypad.kl:system/usr/keylayout/pm8058-keypad.kl \
    $(LOCAL_PATH)/rootdir/system/usr/keylayout/simple_remote.kl:system/usr/keylayout/simple_remote.kl \
    $(LOCAL_PATH)/rootdir/system/etc/sensors.conf:system/etc/sensors.conf \
    $(LOCAL_PATH)/rootdir/system/etc/tiwlan.ini:system/etc/tiwlan.ini

# Device properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=240 \
    com.qc.hdmi_out=false
