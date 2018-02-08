#
# Copyright (C) 2016 The CyanogenMod Project
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

# inherit from common msm8937
include device/lge/msm8937-common/BoardConfigCommon.mk

LOCAL_PATH := device/lge/lv517

# Asserts
TARGET_OTA_ASSERT_DEVICE := lv517,TP260,MP260

# Filesystem
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3535798272
BOARD_USERDATAIMAGE_PARTITION_SIZE := 10887364608
BOARD_CACHEIMAGE_PARTITION_SIZE := 524288000
TARGET_USERIMAGES_USE_EXT4 := true

#Recovery
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/fstab.qcom

#Recovery-twrp
#RECOVERY_VARIANT := twrp 
#TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/fstab.twrp
#TW_THEME := portrait_hdpi
#TW_MAX_BRIGHTNESS := 255
#TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
#TW_DEFAULT_EXTERNAL_STORAGE := true
#TARGET_RECOVERY_QCOM_RTC_FIX := true
#RECOVERY_SDCARD_ON_DATA := true
#RECOVERY_GRAPHICS_USE_LINELENGTH := true
#TW_IGNORE_MISC_WIPE_DATA := true
#TW_SCREEN_BLANK_ON_BOOT := true
#TW_INPUT_BLACKLIST := "hbtp_vm"

# inherit from the proprietary version
-include vendor/lge/lv517/BoardConfigVendor.mk
-include device/lge/common/BoardConfigCommon.mk
