$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, device/common/gps/gps_as_supl.mk)
$(call inherit-product, build/target/product/full.mk)
$(call inherit-product-if-exists, vendor/huawei/u8800pro/u8800pro-vendor.mk)
# Include proprietary stuff
$(call inherit-product-if-exists, vendor/huawei/u8800pro/u8800pro-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/huawei/u8800pro/overlay
PRODUCT_LOCALES += hdpi

# Video decoding
PRODUCT_PACKAGES += \
    libstagefrighthw \
    libmm-omxcore \
    libOmxCore \
    Torch
    
# Graphics 
PRODUCT_PACKAGES += \
    gralloc.msm7x30 \
    copybit.msm7x30 \
    hwcomposer.msmx30 \
    libtilerenderer \
    libQcomUI \
    libI420colorconvert

# Audio
PRODUCT_PACKAGES += \
    audio.primary.msmx30\
    audio_policy.msm7x30 \
    audio.a2dp.default \
    libaudioutils

# Other
PRODUCT_PACKAGES += \
    dexpreopt \
    camera.msm7x30

# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory 

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/base/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/base/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# init
PRODUCT_COPY_FILES += \
    device/huawei/u8800pro/root/init.huawei.rc:root/init.huawei.rc \
    device/huawei/u8800pro/root/init.huawei.usb.rc:root/init.huawei.usb.rc \
    device/huawei/u8800pro/root/init.qcom.sh:root/init.qcom.sh \
    device/huawei/u8800pro/root/init.qcom.usb.sh:root/init.qcom.usb.sh \
    device/huawei/u8800pro/root/ueventd.huawei.rc:root/ueventd.huawei.rc

# ETC
PRODUCT_COPY_FILES += \
    device/huawei/u8800pro/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml \
    device/huawei/u8800pro/prebuilt/etc/vold.fstab:system/etc/vold.fstab \
    device/huawei/u8800pro/prebuilt/etc/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    device/huawei/u8800pro/prebuilt/etc/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \
    device/huawei/u8800pro/prebuilt/etc/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \
    device/huawei/u8800pro/prebuilt/etc/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
    device/huawei/u8800pro/prebuilt/etc/init.qcom.sdio.sh:system/etc/init.qcom.sdio.sh \
    device/huawei/u8800pro/prebuilt/etc/init.qcom.wifi.sh:system/etc/init.qcom.wifi.sh
    
# BLUETOOTH
PRODUCT_COPY_FILES += \
    device/huawei/u8800pro/prebuilt/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/huawei/u8800pro/prebuilt/etc/bluetooth/BCM4329.hcd:system/etc/bluetooth/BCM4329.hcd \
    device/huawei/u8800pro/prebuilt/etc/bluetooth/init.bcm.bt.sh:system/etc/bluetooth/init.bcm.bt.sh \
    device/huawei/u8800pro/prebuilt/etc/bluetooth/init.bcm.chip_off.sh:system/etc/bluetooth/init.bcm.chip_off.sh \
    device/huawei/u8800pro/prebuilt/etc/bluetooth/init.bcm.chip_on.sh:system/etc/bluetooth/init.bcm.chip_on.sh \
    device/huawei/u8800pro/prebuilt/etc/bluetooth/main.conf:system/etc/bluetooth/main.conf
    
# WIFI
PRODUCT_COPY_FILES += \
    device/huawei/u8800pro/prebuilt/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/huawei/u8800pro/prebuilt/wifi/firmware.bin:system/wifi/firmware.bin \
    device/huawei/u8800pro/prebuilt/wifi/firmware_apsta.bin:system/wifi/firmware_apsta.bin \
    device/huawei/u8800pro/prebuilt/wifi/nvram.txt:system/wifi/nvram.txt \
    device/huawei/u8800pro/prebuilt/wifi/dhd.ko:system/wifi/dhd.ko

# firmware
PRODUCT_COPY_FILES += \
    device/huawei/u8800pro/prebuilt/etc/firmware/a225p5_pm4.fw:system/etc/firmware/a225p5_pm4.fw \
    device/huawei/u8800pro/prebuilt/etc/firmware/a225_pfp.fw:system/etc/firmware/a225_pfp.fw \
    device/huawei/u8800pro/prebuilt/etc/firmware/a225_pm4.fw:system/etc/firmware/a225_pm4.fw \
    device/huawei/u8800pro/prebuilt/etc/firmware/a300_pfp.fw:system/etc/firmware/a300_pfp.fw \
    device/huawei/u8800pro/prebuilt/etc/firmware/a300_pm4.fw:system/etc/firmware/a300_pm4.fw \
    device/huawei/u8800pro/prebuilt/etc/firmware/leia_pfp_470.fw:system/etc/firmware/leia_pfp_470.fw \
    device/huawei/u8800pro/prebuilt/etc/firmware/leia_pm4_470.fw:system/etc/firmware/leia_pm4_470.fw \
    device/huawei/u8800pro/prebuilt/etc/firmware/vidc_720p_command_control.fw:system/etc/firmware/vidc_720p_command_control.fw \
    device/huawei/u8800pro/prebuilt/etc/firmware/vidc_720p_h263_dec_mc.fw:system/etc/firmware/vidc_720p_h263_dec_mc.fw \
    device/huawei/u8800pro/prebuilt/etc/firmware/vidc_720p_h264_dec_mc.fw:system/etc/firmware/vidc_720p_h264_dec_mc.fw \
    device/huawei/u8800pro/prebuilt/etc/firmware/vidc_720p_h264_enc_mc.fw:system/etc/firmware/vidc_720p_h264_enc_mc.fw \
    device/huawei/u8800pro/prebuilt/etc/firmware/vidc_720p_mp4_dec_mc.fw:system/etc/firmware/vidc_720p_mp4_dec_mc.fw \
    device/huawei/u8800pro/prebuilt/etc/firmware/vidc_720p_mp4_enc_mc.fw:system/etc/firmware/vidc_720p_mp4_enc_mc.fw \
    device/huawei/u8800pro/prebuilt/etc/firmware/vidc_720p_vc1_dec_mc.fw:system/etc/firmware/vidc_720p_vc1_dec_mc.fw \
    device/huawei/u8800pro/prebuilt/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    device/huawei/u8800pro/prebuilt/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \
    device/huawei/u8800pro/prebuilt/etc/firmware/cyttsp_7630_fluid.hex:system/etc/firmware/cyttsp_7630_fluid.hex

# KEY
PRODUCT_COPY_FILES += \
    device/huawei/u8800pro/prebuilt/usr/keychars/surf_keypad.kcm:system/usr/keychars/surf_keypad.kcm \
    device/huawei/u8800pro/prebuilt/usr/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    device/huawei/u8800pro/prebuilt/usr/keylayout/fluid-keypad.kl:system/usr/keylayout/fluid-keypad.kl \
    device/huawei/u8800pro/prebuilt/usr/keylayout/Generic.kl:system/usr/keylayout/Generic.kl \
    device/huawei/u8800pro/prebuilt/usr/keylayout/msm_tma300_ts.kl:system/usr/keylayout/msm_tma300_ts.kl \
    device/huawei/u8800pro/prebuilt/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    device/huawei/u8800pro/prebuilt/usr/keylayout/surf_keypad.kl:system/usr/keylayout/surf_keypad.kl \
    device/huawei/u8800pro/prebuilt/usr/idc/atmel-rmi-touchscreen.idc:system/usr/idc/atmel-rmi-touchscreen.idc \
    device/huawei/u8800pro/prebuilt/usr/idc/synaptics.idc:system/usr/idc/synaptics.idc

# uncapfps
PRODUCT_COPY_FILES += \
    device/huawei/u8800pro/prebuilt/uncapfps.sh::system/addon.d/uncapfps.sh
