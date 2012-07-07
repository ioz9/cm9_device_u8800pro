## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := U8800PRO

# Boot animation
TARGET_BOOTANIMATION_NAME := vertical-480x800

# Inherit device configuration
$(call inherit-product, device/huawei/u8800pro/u8800pro.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := u8800pro
PRODUCT_NAME := cm_u8800pro
PRODUCT_BRAND := Huawei
PRODUCT_MODEL := u8800pro
PRODUCT_MANUFACTURER := Huawei

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
	PRODUCT_NAME=u8800pro \
	BUILD_DISPLAY_ID="IMM76I" \
	BUILD_FINGERPRINT=huawei/u8800pro:4.0.4/IMM76I/223133:userdebug/test-keys \
	PRIVATE_BUILD_DESC="huawei-user 4.0.4 IMM76I 223133 test-keys" \
	BUILD_NUMBER=223133
