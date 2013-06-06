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

-include device/semc/mogami-common/BoardConfigCommon.mk
-include vendor/semc/urushi/BoardConfigVendor.mk

# Kernel
TARGET_KERNEL_CONFIG := nAa_urushi_defconfig

# Sensors
SOMC_CFG_SENSORS_ACCEL_BMA150_INPUT := yes
SOMC_CFG_SENSORS_PROXIMITY_APDS9700 := yes

TARGET_OTA_ASSERT_DEVICE := ST18i,ST18a,urushi

# Torch
COMMON_GLOBAL_CFLAGS += -DUSES_AS3676_TORCH

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/semc/urushi/bluedroid
