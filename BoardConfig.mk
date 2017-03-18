# inherit from the proprietary version
-include vendor/samsung/xcover/BoardConfigVendor.mk

TARGET_BOARD_PLATFORM := pxa968
TARGET_BOOTLOADER_BOARD_NAME := pxa968

#kernel
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a
#TARGET_ARCH_VARIANT_CPU := marvell-pj4 # in gcc 4.8
TARGET_ARCH_VARIANT_FPU := vfpv3-d16
TARGET_CPU_SMP := false

# Misc
TARGET_NO_KERNEL := false
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_DOWNLOAD_MODE := true
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_OTA_ASSERT_DEVICE := xcover,GT-S5690
TARGET_NO_INITLOGO := true
BOARD_ENABLE_FAST_OVERLAY := true
BOARD_USE_LEGACY_TOUCHSCREEN := true

BOARD_USES_ALSA_AUDIO := true
TARGET_PROVIDES_LIBAUDIO := true

# Accessories
USE_CAMERA_STUB := false
ifeq ($(USE_CAMERA_STUB),false)
BOARD_CAMERA_LIBRARIES := libcamera
endif
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_FM_RADIO := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/usb_mass_storage/lun0/file

# Init
TARGET_PROVIDES_INIT_RC := true
TARGET_PROVIDES_INIT_TARGET_RC := false

# Recovery
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/samsung/xcover/recovery/recovery_keys.c
BOARD_CUSTOM_GRAPHICS := ../../../device/samsung/xcover/recovery/graphics.c
#BOARD_USES_BML_OVER_MTD := true
#BOARD_RECOVERY_HANDLES_MOUNT := true
TARGET_RECOVERY_INITRC := device/samsung/xcover/recovery/init.rc
TARGET_RECOVERY_FSTAB := device/samsung/xcover/recovery/recovery.fstab

# 3D
BOARD_EGL_CFG := device/samsung/xcover/egl.cfg

# Kernel
BOARD_NAND_PAGE_SIZE := 4096
BOARD_NAND_SPARE_SIZE := 128
BOARD_KERNEL_CMDLINE := rdinit=/busybox/rdinit androidboot.console=ttyS0 console=ttyS0,115200 mem=240M@0x80000000 comm_v75 uart_dma vmalloc=0x18000000 reserve_pmem=0x2800000
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 4096
TARGET_PREBUILT_KERNEL := device/samsung/xcover/prebuilt/kernel
#TARGET_KERNEL_CONFIG := alkon_03_defconfig
#WPA_SUPPLICANT_VERSION := VER_0_6_X
#BOARD_WPA_SUPPLICANT_DRIVER := WEXT
#WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/sd8787.ko"
#WIFI_DRIVER_MODULE_NAME := "sd8787"
#WIFI_DRIVER_MODULE_ARG := "fw_name=mrvl/w8787_wlan_SDIO_bt_SDIO.bin"

TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := device/samsung/xcover/releasetools/ota_from_target_files

# Partitions
TARGET_USERIMAGES_USE_EXT4 := false
BOARD_FLASH_BLOCK_SIZE := 131072

#  11: 0x00b40000-0x00f40000 0x00400000 Kernel
#  12: 0x00b40000-0x00f40000 0x00400000 FOTA Kernel / empty
#  13: 0x01340000-0x01380000 0x00040000 Ramdisk
#  15: 0x013c0000-0x01540000 0x00180000 Recovery ramdisk
#  16: 0x01540000-0x10bc0000 0x0f680000 System
#  17: 0x10bc0000-0x1b7c0000 0x0ac00000 Data

BOARD_BML_BOOT := /dev/block/bml13
BOARD_BML_RECOVERY := /dev/block/bml15

BOARD_BOOTIMAGE_PARTITION_SIZE := $(call image-size-from-data-size,0x00400000)
BOARD_RECOVERYIMAGE_PARTITION_SIZE := $(call image-size-from-data-size,0x00400000)

BOARD_SYSTEMIMAGE_PARTITION_SIZE := 250085376 
BOARD_USERDATAIMAGE_PARTITION_SIZE := 173539328
