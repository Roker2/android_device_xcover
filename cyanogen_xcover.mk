# Release name
PRODUCT_RELEASE_NAME := xcover

# Inherit common CM stuff
$(call inherit-product, vendor/cyanogen/products/common.mk)

# Inherit GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/xcover/full_xcover.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := xcover
PRODUCT_NAME := cyanogen_xcover
PRODUCT_BRAND := samsung
PRODUCT_MODEL := GT-S5690
PRODUCT_MANUFACTURER := samsung

