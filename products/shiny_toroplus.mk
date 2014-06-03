# Toroplus props root
TOROPLUS_PROPS_ROOT=vendor/shiny/proprietary/toroplus

# Current method to pass device name to installer
export AOSP_INTENDED_DEVICE=toroplus

# Inherit common Shiny product configuration.
$(call inherit-product, vendor/shiny/products/shiny_common.mk)

# Inherit common Shiny phone configuration.
$(call inherit-product, vendor/shiny/products/shiny_common_phone.mk)

# Inherit Shiny tuna device configuration.
$(call inherit-product, vendor/shiny/products/shiny_tuna.mk)

# Inherit AOSP device configuration for toroplus.
$(call inherit-product, device/samsung/toroplus/aosp_toroplus.mk)

# Toro's custom kernel path
TARGET_PREBUILT_KERNEL := kernel/samsung/tuna/arch/arm/boot/zImage

# Setup device specific product configuration.
PRODUCT_NAME := shiny_toroplus
PRODUCT_BRAND := google
PRODUCT_DEVICE := toroplus
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

# Override some build.prop settings for toroplus
PRODUCT_BUILD_PROP_OVERRIDES += \
	PRODUCT_NAME=mysidspr \
	BUILD_NUMBER=1158763 \
	BUILD_FINGERPRINT="google/mysidspr/toroplus:4.4.3/KTU84M/1158763:user/release-keys" \
	PRIVATE_BUILD_DESC="mysidspr-user 4.4.3 KTU84M 1158763 release-keys"
	
PRODUCT_PROPERTY_OVERRIDES += \
    camera.flash_off=0

# Import Shiny's toroplus overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/shiny/overlay/toroplus

# Add toroplus-specific packages
PRODUCT_PACKAGES += \
    Stk

# Enable Bluetooth LE for toroplus
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml
