#!/bin/sh

# Copyright (C) 2010 The Android Open Source Project
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

VENDOR=semc
DEVICE=urushi

rm -r ../../../vendor/$VENDOR/$DEVICE
mkdir -p ../../../vendor/$VENDOR/$DEVICE/proprietary

# Prebuilt kl keymaps
adb pull /system/usr/keychars/qwerty.kcm.bin ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keychars/qwerty.kcm.bin ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keychars/qwerty2.kcm.bin ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keylayout/atdaemon.kl ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keylayout/AVRCP.kl ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keylayout/msm_pmic_pwr_key.kl ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keylayout/pm8058-keypad.kl ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keylayout/qwerty.kl ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/keylayout/simple_remote.kl ../../../vendor/$VENDOR/$DEVICE/proprietary

## RIL related stuff 
adb pull /system/lib/libril.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/bin/port-bridge ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/bin/qmuxd ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libauth.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libcm.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libdiag.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libdll.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libdsm.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libdss.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libgsdi_exp.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libgstk_exp.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libmmgsdilib.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnv.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/liboem_rapi.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/liboncrpc.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libpbmlib.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libqmi.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libqueue.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libuim.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libreference-ril.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libril-qc-1.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libwms.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libwmsts.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libdsi_netctrl.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libdsutils.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libidl.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libnetmgr.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libqdp.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/bin/netmgrd ../../../vendor/$VENDOR/$DEVICE/proprietary

## Camera proprietaries
adb pull /system/lib/liboemcamera.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libmmjpeg.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libmmipl.so ../../../vendor/$VENDOR/$DEVICE/proprietary 
adb pull /system/lib/libcamera.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libcamera_clientsemc.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libopencore_common.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libcald_api.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libcald_client.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libcald_debugger.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libcald_hal.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libcald_imageutil.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libcald_omxcamera.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libcald_omxcamera_plugin.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libcald_pal.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libcald_server.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libface.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libgemini.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libcameraextensionclient.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libcameraextensionjni.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libcameraextensionservice.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libcameralight.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/semc/camera/APT00YP0.dat: ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/semc/camera/APT00YP0_MT9V144.dat ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/semc/camera/AS3676_00_flash.dat ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/semc/camera/LGI08BN0.dat ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/semc/camera/SOD08BN0.dat ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/semc/camera/SOD08BN0_DW9714.dat ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/semc/camera/SOD08BN0_IMX073.dat ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/semc/camera/SOD08BN1.dat ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/semc/camera/SOD08BN1_DW9714.dat ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/usr/semc/camera/SOD08BN1_IMX105.dat ../../../vendor/$VENDOR/$DEVICE/proprietary



## FIRMWARE
adb pull /system/etc/firmware/bq27520_fw-0501_filever-0107_proj-hall_golden.bqfs ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/firmware/bq27520_fw-0501_filever-0107_proj-hall_golden.dffs ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/firmware/fm_rx_init_1273.1.bts ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/firmware/fm_rx_init_1273.2.bts ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/firmware/fm_tx_init_1273.1.bts ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/firmware/fm_tx_init_1273.2.bts ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/firmware/fmc_init_1273.1.bts ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/firmware/fmc_init_1273.2.bts ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/firmware/TIInit_7.5.20.bts ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/firmware/TIInit_7.6.15.bts ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/firmware/vidc_720p_command_control.fw ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/firmware/vidc_720p_h263_dec_mc.fw ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/firmware/vidc_720p_h264_dec_mc.fw ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/firmware/vidc_720p_h264_enc_mc.fw ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/firmware/vidc_720p_mp4_dec_mc.fw ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/firmware/vidc_720p_mp4_enc_mc.fw ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/firmware/vidc_720p_vc1_dec_mc.fw ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/firmware/yamato_pfp.fw ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/firmware/yamato_pm4.fw ../../../vendor/$VENDOR/$DEVICE/proprietary


## WIFI & BT TI1271
adb pull /system/bin/nvimport ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/bin/hciattach ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/init.qcom.bt.sh ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/tiwlan.ini ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/wifi/wpa_supplicant.conf ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/wifi/softap/hostapd.conf ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/tiwlan_firmware.bin ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/wifi/softap/tiwlan_ap.ini ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/wifi/softap/softap_firmware.bin ../../../vendor/$VENDOR/$DEVICE/proprietary

## Adreno 200 files
adb pull /system/lib/libgsl.so ../../../vendor/$VENDOR/$DEVICE/proprietary/libgsl.so
adb pull /system/lib/egl/libGLESv1_CM_adreno200.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/egl/libq3dtools_adreno200.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/egl/libEGL_adreno200.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/egl/libGLESv2_adreno200.so ../../../vendor/$VENDOR/$DEVICE/proprietary

## Other libraries and proprietary binaries
adb pull /system/lib/libaudioalsa.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libaudioeq.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/als_curve.conf ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/vold.fstab ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/sensors.conf ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/hw/sensors.default.so ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/bin/bq275xx_fwloader ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/bin/akmd8975 ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/bin/chargemon ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/lib/libmiscta.so ../../../vendor/$VENDOR/$DEVICE/proprietary

#Temporary GPS Fix untill we have 50001 gps
adb pull /system/lib/hw/gps.msm7x30.so ../../../vendor/$VENDOR/$DEVICE/proprietary

#touch
adb pull /system/etc/firmware/touch_module_id_0x01.img ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/firmware/touch_module_id_0x02.img ../../../vendor/$VENDOR/$DEVICE/proprietary
adb pull /system/etc/firmware/touch_module_id_0x11.img ../../../vendor/$VENDOR/$DEVICE/proprietary

./setup-makefiles.sh

