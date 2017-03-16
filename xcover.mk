$(call inherit-product, $(SRC_TARGET_DIR)/product/generic.mk)
PRODUCT_BRAND :=samsung
PRODUCT_DEVICE :=xcover
PRODUCT_NAME :=xcover
#my vendor
LOCAL_PATH := vendor/samsung/xcover/


PRODUCT_COPY_FILES += \
$(LOCAL_PATH)/system/*:system/*
#display 320x480
#PRODUCT_AAPT_CONFIG :=mdpi
#PRODUCT_AAPT_PREF_CONFIG :=mdpi
#PRODUCT_CHARACTERISTICS :=phone
$(call inherit-product-if-exists, vendor/samsung/xcover/xcover-vendor.mk)
