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

# Inherit device configuration
$(call inherit-product, device/semc/urushi/full_urushi.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/cm/config/common_mini_phone.mk)

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=ST18i \
    TARGET_DEVICE=ST18i \
    BUILD_FINGERPRINT="SEMC/ST18i_1254-2184/ST18i:4.0.4/4.1.B.0.587/tL1_3w:user/release-keys" \
    PRIVATE_BUILD_DESC="ST18i-user 4.0.4 4.1.B.0.587 tL1_3w test-keys"

# Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_urushi
PRODUCT_GMS_CLIENTID_BASE := android-sonyericsson

# Custom tag for unofficial builds
TARGET_UNOFFICIAL_BUILD_ID := LegacyXperia
