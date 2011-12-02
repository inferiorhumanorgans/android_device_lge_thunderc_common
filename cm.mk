SUB_MODEL := VM670
PRODUCT_RELEASE_NAME := IHO

# Include the stock APNS config file instead of the dev one
PRODUCT_COPY_FILES := \
    vendor/cm/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml \
#    vendor/cm/prebuilt/mdpi/media/bootanimation.zip:system/media/bootanimation.zip \
    $(PRODUCT_COPY_FILES)

# Inherit device configuration for the thunderc.
$(call inherit-product, device/lge/thunderc/device_thunderc.mk)

# Inherit some common cmmod stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_BRAND := LGE
PRODUCT_DEVICE := thunderc
PRODUCT_MODEL := LG-$(SUB_MODEL)
PRODUCT_MANUFACTURER := LGE
PRODUCT_NAME := cm_thunderc
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=thunderc BUILD_UTC_DATE=0 BUILD_ID=GRI40 BUILD_DISPLAY_ID="GRJ90 ($(shell date +%m%d%Y)/$(SUB_MODEL))" BUILD_FINGERPRINT=lge/thunderg/thunderg:2.3.3/GRI40/LG-P500-V20g.19C11F164C:user/release-keys PRIVATE_BUILD_DESC="thunderg-user 2.3.3 GRI40 LG-P500-V20g.19C11F164C release-keys"

# Live wallpaper packages
PRODUCT_PACKAGES += \
        LiveWallpapers \
        LiveWallpapersPicker \
        MagicSmokeWallpapers \
        VisualizationWallpapers
