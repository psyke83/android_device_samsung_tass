#
# Copyright (C) 2011 The Android Open Source Project
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
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/samsung/tass/BoardConfigVendor.mk

# Camera
#BOARD_USE_FROYO_LIBCAMERA := true

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := msm7k
TARGET_ARCH_VARIANT := armv6-vfp
TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi

# Kernel
TARGET_PREBUILT_KERNEL := device/samsung/tass/prebuilt/kernel
#TARGET_PREBUILT_RECOVERY_KERNEL := device/samsung/tass/prebuilt/recovery_kernel
BOARD_NAND_PAGE_SIZE := 4096 -s 128
BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x13600000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_PAGE_SIZE := 0x00001000

# Graphics
BOARD_EGL_CFG := device/samsung/tass/prebuilt/lib/egl/egl.cfg
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
BOARD_USE_SCREENCAP := true
#BOARD_NO_RGBX_8888 := true

# cat /proc/LinuStoreIII/bmlinfo
# FSR VERSION: FSR_1.2.1p1_b139_RTM
# minor       position           size     units       id
#    1: 0x00000000-0x00180000 0x00180000      6        1
#    2: 0x00180000-0x00200000 0x00080000      2        2
#    3: 0x00200000-0x002c0000 0x000c0000      3        3
#    4: 0x002c0000-0x01bc0000 0x01900000    100        4
#    5: 0x01bc0000-0x024c0000 0x00900000     36       23
#    6: 0x024c0000-0x029c0000 0x00500000     20       25
#    7: 0x029c0000-0x02bc0000 0x00200000      8        5
#    8: 0x02bc0000-0x033c0000 0x00800000     32        6
#    9: 0x033c0000-0x03bc0000 0x00800000     32        7
#   10: 0x03bc0000-0x03c80000 0x000c0000      3        8
#   11: 0x03c80000-0x04280000 0x00600000     24        9
#   12: 0x04280000-0x11bc0000 0x0d940000    869       21
#   13: 0x11bc0000-0x1d800000 0x0bc40000    753       22
#   14: 0x1d800000-0x1f500000 0x01d00000    116       24

# Recovery
BOARD_BML_BOOT := "/dev/block/bml8"
BOARD_BML_RECOVERY := "/dev/block/bml9"
TARGET_BOOTLOADER_BOARD_NAME := tass
TARGET_OTA_ASSERT_DEVICE := tass,GT-S5570
BOARD_RECOVERY_HANDLES_MOUNT := true
BOARD_HAS_DOWNLOAD_MODE := true
BOARD_LDPI_RECOVERY := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 219938816
BOARD_USERDATAIMAGE_PARTITION_SIZE := 190054400
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_RECOVERY_INITRC := device/samsung/tass/recovery/recovery.rc
BOARD_CUSTOM_GRAPHICS := ../../../device/samsung/tass/recovery/graphics.c
BOARD_CUSTOM_RECOVERY_KEYMAPPING:= ../../device/samsung/tass/recovery/recovery_ui.c
#TARGET_RECOVERY_PRE_COMMAND := "echo 3 > /proc/sys/vm/drop_caches; echo 604800 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq; sync"
TARGET_USERIMAGES_USE_EXT4 := true

# Audio
TARGET_PROVIDES_LIBAUDIO := true 

# Sensors
#TARGET_USES_OLD_LIBSENSORS_HAL :=true
#TARGET_SENSORS_NO_OPEN_CHECK := true

# QCOM
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# GPS
BOARD_USES_QCOM_GPS := true
BOARD_USES_QCOM_LIBRPC := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := tass
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

# USB
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/usb_mass_storage/gadget/lun"
BOARD_UMS_LUNFILE := "/sys/devices/platform/usb_mass_storage/lun0/file"

# WiFi
PRODUCT_WIRELESS_TOOLS      := true
WPA_SUPPLICANT_VERSION      := VER_0_6_X
BOARD_WPA_SUPPLICANT_DRIVER := AR6000
BOARD_WLAN_DEVICE           := ar6000
WIFI_DRIVER_MODULE_PATH     := "/system/wifi/ar6000.ko"
WIFI_DRIVER_MODULE_ARG      := ""
WIFI_DRIVER_MODULE_NAME     := ar6000
BOARD_WEXT_NO_COMBO_SCAN    := true

# 3G
BOARD_MOBILEDATA_INTERFACE_NAME := "pdp0"

# JIT / Optimizations
#WITH_DEXPREOPT := true
JS_ENGINE := v8

# FM Radio
BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO
BOARD_FM_DEVICE := bcm2049
#BOARD_USE_BROADCOM_FM_VOLUME_HACK := true
