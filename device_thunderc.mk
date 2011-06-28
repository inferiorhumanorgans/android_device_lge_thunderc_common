$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, device/common/gps/gps_us_supl.mk)

PRODUCT_LOCALES += mdpi

DEVICE_PACKAGE_OVERLAYS += device/lge/thunderc/overlay

TARGET_PREBUILT_KERNEL := device/lge/thunderc/files/zImage
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

#    libaudio.thunderc \

PRODUCT_PACKAGES += \
    gps.thunderc \
    librs_jni \
    libmm-omxcore \
    libOmxCore \
    flash_image \
    dump_image \
    erase_image \
    e2fsck \
    SpareParts


DISABLE_DEXPREOPT := false

# Scott Pilgrim Awesome, thanks to Nick7!
PRODUCT_COPY_FILES += \
    device/lge/thunderc/files/bootanimation.zip:system/media/bootanimation.zip \

# Backlight
PRODUCT_COPY_FILES += \
    vendor/lge/thunderc/proprietary/system/lib/hw/lights.thunderc.so:system/lib/hw/lights.thunderc.so \

# Publish that we support the live wallpaper feature.
PRODUCT_COPY_FILES += \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

# Keylayouts
PRODUCT_COPY_FILES += \
    device/lge/thunderc/files/thunder_keypad.kl:system/usr/keylayout/thunder_keypad.kl \
    vendor/lge/thunderc/proprietary/system/usr/keychars/thunder_keypad.kcm.bin:system/usr/keychars/thunder_keypad.kcm.bin \

# Board-specific init (does not support charging in "power off" state yet)
PRODUCT_COPY_FILES += \
    device/lge/thunderc/files/init.thunderc.rc:root/init.thunderc.rc \
    device/lge/thunderc/files/ueventd.thunderc.rc:root/ueventd.thunder.rc \
    device/lge/thunderc/files/initlogo.rle:root/initlogo.rle \
    device/lge/thunderc/files/chargerlogo:root/chargerlogo \
    device/lge/thunderc/files/chargerimages/battery_ani_01.rle:root/chargerimages/battery_ani_01.rle \
    device/lge/thunderc/files/chargerimages/battery_ani_02.rle:root/chargerimages/battery_ani_02.rle \
    device/lge/thunderc/files/chargerimages/battery_ani_03.rle:root/chargerimages/battery_ani_03.rle \
    device/lge/thunderc/files/chargerimages/battery_ani_04.rle:root/chargerimages/battery_ani_04.rle \
    device/lge/thunderc/files/chargerimages/battery_ani_05.rle:root/chargerimages/battery_ani_05.rle \
    device/lge/thunderc/files/chargerimages/battery_charging_01.rle:root/chargerimages/battery_charging_01.rle \
    device/lge/thunderc/files/chargerimages/battery_charging_02.rle:root/chargerimages/battery_charging_02.rle \
    device/lge/thunderc/files/chargerimages/battery_charging_03.rle:root/chargerimages/battery_charging_03.rle \
    device/lge/thunderc/files/chargerimages/battery_charging_04.rle:root/chargerimages/battery_charging_04.rle \
    device/lge/thunderc/files/chargerimages/battery_charging_05.rle:root/chargerimages/battery_charging_05.rle \
    device/lge/thunderc/files/chargerimages/battery_charging_06.rle:root/chargerimages/battery_charging_06.rle \
    device/lge/thunderc/files/chargerimages/battery_notenough.rle:root/chargerimages/battery_notenough.rle \
    device/lge/thunderc/files/chargerimages/battery_bg.rle:root/chargerimages/battery_bg.rle \
    device/lge/thunderc/files/chargerimages/black_bg.rle:root/chargerimages/black_bg.rle \
    device/lge/thunderc/files/chargerimages/battery_wait_ani_01.rle:root/chargerimages/battery_wait_ani_01.rle \
    device/lge/thunderc/files/chargerimages/battery_wait_ani_01.rle:root/chargerimages/battery_wait_ani_02.rle \
    device/lge/thunderc/files/etc/init.local.rc:/system/etc/init.local.rc

# 2D (using proprietary because of poor perfomance of open source libs)
PRODUCT_COPY_FILES += \
    vendor/lge/thunderc/proprietary/system/lib/hw/gralloc.default.so:system/lib/hw/gralloc.default.so \
    vendor/lge/thunderc/proprietary/system/lib/hw/gralloc.thunderc.so:system/lib/hw/gralloc.thunderc.so \
    vendor/lge/thunderc/proprietary/system/lib/hw/copybit.thunderc.so:system/lib/hw/copybit.thunderc.so \

# Sensors
PRODUCT_COPY_FILES += \
    vendor/lge/thunderc/proprietary/system/lib/hw/sensors.thunderc.so:system/lib/hw/sensors.thunderc.so \
    vendor/lge/thunderc/proprietary/system/bin/ami304d:system/bin/ami304d \

# 3D
PRODUCT_COPY_FILES += \
    vendor/lge/thunderc/proprietary/system/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
    vendor/lge/thunderc/proprietary/system/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    vendor/lge/thunderc/proprietary/system/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
    vendor/lge/thunderc/proprietary/system/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \
    vendor/lge/thunderc/proprietary/system/lib/libgsl.so:system/lib/libgsl.so \
    vendor/lge/thunderc/proprietary/system/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    vendor/lge/thunderc/proprietary/system/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \

# Camera
PRODUCT_COPY_FILES += \
    device/lge/thunderc/files/liboemcamera.so:system/lib/liboemcamera.so \
    vendor/lge/thunderc/proprietary/system/lib/libmmipl.so:system/lib/libmmipl.so \
    vendor/lge/thunderc/proprietary/system/lib/libmmjpeg.so:system/lib/libmmjpeg.so \

# Wifi
PRODUCT_COPY_FILES += \
    device/lge/thunderc/files/wireless.ko:system/lib/modules/wireless.ko \
    device/lge/thunderc/files/tun.ko:system/lib/modules/tun.ko \
    device/lge/thunderc/files/dma_test.ko:system/lib/modules/dma_test.ko \
    device/lge/thunderc/files/tcp_bic.ko:system/lib/modules/tcp_bic.ko \
    device/lge/thunderc/files/tcp_htcp.ko:system/lib/modules/tcp_htcp.ko \
    device/lge/thunderc/files/tcp_westwood.ko:system/lib/modules/tcp_westwood.ko \
#    vendor/lge/thunderc/proprietary/system/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    vendor/lge/thunderc/proprietary/system/etc/wl/nvram.txt:system/etc/wl/nvram.txt \
    device/lge/thunderc/files/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    vendor/lge/thunderc/proprietary/system/etc/wl/rtecdc.bin:system/etc/wl/rtecdc.bin \
    vendor/lge/thunderc/proprietary/system/etc/wl/rtecdc-apsta.bin:system/etc/wl/rtecdc-apsta.bin \
    vendor/lge/thunderc/proprietary/system/etc/wl/rtecdc-mfgtest.bin:system/etc/wl/rtecdc-mfgtest.bin

# SD Card
PRODUCT_COPY_FILES += \
    vendor/lge/thunderc/proprietary/system/etc/vold.fstab:system/etc/vold.fstab \

# Audio
PRODUCT_COPY_FILES += \
    device/lge/thunderc/files/AudioFilter.csv:system/etc/AudioFilter.csv \
    vendor/lge/thunderc/proprietary/system/lib/libaudioeq.so:system/lib/libaudioeq.so \
    device/lge/thunderc/files/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \

# Device permissions
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \

# LGE services
PRODUCT_COPY_FILES += \
    vendor/lge/thunderc/proprietary/system/bin/qmuxd:system/bin/qmuxd \

# Sprint MMS
PRODUCT_COPY_FILES += \
    device/lge/thunderc/files/apns-conf.xml:system/etc/apns-conf.xml \

# wipeirface (What is this?)
# (Whatever it is LS670 doesn't have it)
# PRODUCT_COPY_FILES += \
#    vendor/lge/thunderc/proprietary/system/bin/wiperiface:system/bin/wiperiface \

# Touchscreen firmware updater
#PRODUCT_COPY_FILES += \
#    vendor/lge/thunderc/proprietary/system/bin/tsdown:system/bin/tsdown \
#    vendor/lge/thunderc/proprietary/system/etc/MELFAS_FIRM.bin:system/etc/MELFAS_FIRM.bin \

# netmgr (What is this?)
#PRODUCT_COPY_FILES += \
#    vendor/lge/thunderc/proprietary/system/bin/netmgrd:system/bin/netmgrd \
#    vendor/lge/thunderc/proprietary/system/lib/libdsutils.so:system/lib/libdsutils.so \
#    vendor/lge/thunderc/proprietary/system/lib/libnetmgr.so:system/lib/libnetmgr.so


PRODUCT_PROPERTY_OVERRIDES += \
    ro.lge.vibrator_amp=125 \

# RIL
PRODUCT_COPY_FILES += \
    vendor/lge/thunderc/proprietary/system/lib/libril-qc-1.so:system/lib/libril-qc-1.so \
    vendor/lge/thunderc/proprietary/system/lib/liboncrpc.so:system/lib/liboncrpc.so \
    vendor/lge/thunderc/proprietary/system/lib/libdsm.so:system/lib/libdsm.so \
    vendor/lge/thunderc/proprietary/system/lib/libqueue.so:system/lib/libqueue.so \
    vendor/lge/thunderc/proprietary/system/lib/libdiag.so:system/lib/libdiag.so \
    vendor/lge/thunderc/proprietary/system/lib/libauth.so:system/lib/libauth.so \
    vendor/lge/thunderc/proprietary/system/lib/libcm.so:system/lib/libcm.so \
    vendor/lge/thunderc/proprietary/system/lib/libnv.so:system/lib/libnv.so \
    vendor/lge/thunderc/proprietary/system/lib/libpbmlib.so:system/lib/libpbmlib.so \
    vendor/lge/thunderc/proprietary/system/lib/libwms.so:system/lib/libwms.so \
    vendor/lge/thunderc/proprietary/system/lib/libwmsts.so:system/lib/libwmsts.so \
    vendor/lge/thunderc/proprietary/system/lib/libmmgsdilib.so:system/lib/libmmgsdilib.so \
    vendor/lge/thunderc/proprietary/system/lib/libgsdi_exp.so:system/lib/libgsdi_exp.so \
    vendor/lge/thunderc/proprietary/system/lib/libgstk_exp.so:system/lib/libgstk_exp.so \
    vendor/lge/thunderc/proprietary/system/lib/libril-qcril-hook-oem.so:system/lib/libril-qcril-hook-oem.so \
    vendor/lge/thunderc/proprietary/system/lib/liboem_rapi.so:system/lib/liboem_rapi.so \
    vendor/lge/thunderc/proprietary/system/lib/libsnd.so:system/lib/libsnd.so \
    vendor/lge/thunderc/proprietary/system/lib/libqmi.so:system/lib/libqmi.so \
    vendor/lge/thunderc/proprietary/system/lib/libdll.so:system/lib/libdll.so \
    vendor/lge/thunderc/proprietary/system/lib/liblgerft.so:system/lib/liblgerft.so \
    vendor/lge/thunderc/proprietary/system/lib/libbcmwl.so:system/lib/libbcmwl.so \
    vendor/lge/thunderc/proprietary/system/lib/libdss.so:system/lib/libdss.so \
    vendor/lge/thunderc/proprietary/system/lib/libril.so:system/lib/libril.so \
    vendor/lge/thunderc/proprietary/system/bin/rild:system/bin/rild \

# OMX
PRODUCT_COPY_FILES += \
    vendor/lge/thunderc/proprietary/system/lib/libmm-adspsvc.so:system/lib/libmm-adspsvc.so \
    vendor/lge/thunderc/proprietary/system/lib/libOmxAacDec.so:system/lib/libOmxAacDec.so \
    vendor/lge/thunderc/proprietary/system/lib/libOmxAacEnc.so:system/lib/libOmxAacEnc.so \
    vendor/lge/thunderc/proprietary/system/lib/libOmxAdpcmDec.so:system/lib/libOmxAdpcmDec.so \
    vendor/lge/thunderc/proprietary/system/lib/libOmxAmrDec.so:system/lib/libOmxAmrDec.so \
    vendor/lge/thunderc/proprietary/system/lib/libOmxAmrEnc.so:system/lib/libOmxAmrEnc.so \
    vendor/lge/thunderc/proprietary/system/lib/libOmxAmrRtpDec.so:system/lib/libOmxAmrRtpDec.so \
    vendor/lge/thunderc/proprietary/system/lib/libOmxAmrwbDec.so:system/lib/libOmxAmrwbDec.so \
    vendor/lge/thunderc/proprietary/system/lib/libOmxEvrcDec.so:system/lib/libOmxEvrcDec.so \
    vendor/lge/thunderc/proprietary/system/lib/libOmxEvrcEnc.so:system/lib/libOmxEvrcEnc.so \
    vendor/lge/thunderc/proprietary/system/lib/libOmxH264Dec.so:system/lib/libOmxH264Dec.so \
    vendor/lge/thunderc/proprietary/system/lib/libOmxMp3Dec.so:system/lib/libOmxMp3Dec.so \
    vendor/lge/thunderc/proprietary/system/lib/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so \
    vendor/lge/thunderc/proprietary/system/lib/libOmxQcelp13Enc.so:system/lib/libOmxQcelp13Enc.so \
    vendor/lge/thunderc/proprietary/system/lib/libOmxQcelpDec.so:system/lib/libOmxQcelpDec.so \
#   vendor/lge/thunderc/proprietary/system/lib/libOmxVidEnc.so:system/lib/libOmxVidEnc.so \
    vendor/lge/thunderc/proprietary/system/lib/libOmxWmaDec.so:system/lib/libOmxWmaDec.so \
    vendor/lge/thunderc/proprietary/system/lib/libOmxWmvDec.so:system/lib/libOmxWmvDec.so \

# Bluetooth
PRODUCT_COPY_FILES += \
    vendor/lge/thunderc/proprietary/system/bin/BCM4325D1_004.002.004.0218.0248.hcd:system/bin/BCM4325D1_004.002.004.0218.0248.hcd \
#    vendor/lge/thunderc/proprietary/system/bin/btld:system/bin/btld
#    vendor/lge/thunderc/proprietary/system/etc/bluetooth/audio.conf:system/etc/bluetooth/audio.conf \
#    vendor/lge/thunderc/proprietary/system/etc/bluetooth/auto_pairing.conf:system/etc/bluetooth/auto_pairing.conf \
#    vendor/lge/thunderc/proprietary/system/etc/bluetooth/blacklist.conf:system/etc/bluetooth/blacklist.conf \
#    vendor/lge/thunderc/proprietary/system/etc/bluetooth/input.conf:system/etc/bluetooth/input.conf \
#    vendor/lge/thunderc/proprietary/system/etc/bluetooth/main.conf:system/etc/bluetooth/main.conf \

PRODUCT_COPY_FILES += \
    device/lge/thunderc/files/etc/media_profiles.xml:system/etc/media_profiles.xml \
    device/lge/thunderc/files/mvdalvik.sh:system/etc/init.d/01mvdalvik \

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_thunderc
PRODUCT_BRAND := LGE
PRODUCT_DEVICE := thunderc
PRODUCT_MODEL := LS670
PRODUCT_MANUFACTURER := LGE
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=thunderc

PRODUCT_PROPERTY_OVERRIDES += \
        ro.com.google.clientidbase=android-sprint-us \
        ro.com.google.locationfeatures=1 \
        ro.cdma.home.operator.numeric=310120 \
        ro.cdma.home.operator.alpha=Sprint \
        ro.cdma.voicemail.number=mine \
        ro.setupwizard.enable_bypass=1 \
        gsm.sim.operator.alpha=Sprint \
        gsm.sim.operator.numeric=310120 \
        gsm.sim.operator.iso-country=us \
        gsm.operator.alpha=Sprint \
        gsm.operator.numeric=310120 \
        gsm.operator.iso-country=us 
        qemu.sf.lcd_density=160 \
        ro.sf.hwrotation=180 \
        ro.sf.lcd_density=160
