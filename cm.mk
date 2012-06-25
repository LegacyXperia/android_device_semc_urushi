## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := ST18i

TARGET_BOOTANIMATION_NAME := vertical-480x854

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/semc/urushi/device_urushi.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := urushi
PRODUCT_NAME := cm_urushi
PRODUCT_BRAND := SEMC
PRODUCT_MODEL := Xperia Ray

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=ST18i BUILD_FINGERPRINT="SEMC/ST18i_1252-5332/ST18i:4.0.4/4.1.B.0.431/UL5_3w:user/release-keys" PRIVATE_BUILD_DESC="ST18i-user 4.0.4 4.1.B.0.431 UL5_3w test-keys"
