$(call inherit-product, device/semc/urushi/device_urushi.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=ST18i BUILD_ID=4.0.A.2.368 BUILD_FINGERPRINT=SEMC/ST18i_1247-1061/ST18i:2.3.3/3.0.1.A.0.145/bn_P:user/release-keys PRIVATE_BUILD_DESC="ST18i-user 2.3.3 3.0.1.A.0.145 bn_P test-keys"

PRODUCT_NAME := cm_urushi
PRODUCT_DEVICE := urushi

