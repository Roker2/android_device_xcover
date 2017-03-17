$(call inherit-product, $(SRC_TARGET_DIR)/product/generic.mk)
PRODUCT_BRAND :=samsung
PRODUCT_DEVICE :=xcover
PRODUCT_NAME :=xcover
#my vendor
LOCAL_PATH := vendor/samsung/xcover/


PRODUCT_COPY_FILES += \
$(LOCAL_PATH)/system/*:system/*
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,device/samsung/xcover/prebuilt/modules,system/lib/modules)

PRODUCT_COPY_FILES += \
	device/samsung/xcover/prebuilt/init.rc:root/init.rc \
	device/samsung/xcover/prebuilt/lpm.rc:root/lpm.rc \
	device/samsung/xcover/prebuilt/ueventd.pxa968.rc:root/ueventd.pxa968.rc

PRODUCT_COPY_FILES += \
device/samsung/xcover/prebuilt/zinitix_touch.idc:system/usr/idc/zinitix_touch.idc
#display 320x480
#PRODUCT_AAPT_CONFIG :=mdpi
#PRODUCT_AAPT_PREF_CONFIG :=mdpi
#PRODUCT_CHARACTERISTICS :=phone
$(call inherit-product-if-exists, vendor/samsung/xcover/xcover-vendor.mk)
