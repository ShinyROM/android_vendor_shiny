# Maguro props root
MAGURO_PROPS_ROOT=vendor/shiny/proprietary/maguro

# Current method to pass device name to installer
export AOSP_INTENDED_DEVICE=maguro

# Inherit common Shiny product configuration.
$(call inherit-product, vendor/shiny/products/shiny_common.mk)

# Inherit common Shiny phone configuration.
$(call inherit-product, vendor/shiny/products/shiny_common_phone.mk)

# Inherit Shiny tuna device configuration.
$(call inherit-product, vendor/shiny/products/shiny_tuna.mk)

# Inherit AOSP device configuration for maguro.
$(call inherit-product, device/samsung/maguro/aosp_maguro.mk)

# Maguro's custom kernel path
TARGET_PREBUILT_KERNEL := kernel/samsung/tuna/arch/arm/boot/zImage

# Setup device specific product configuration.
PRODUCT_NAME := shiny_maguro
PRODUCT_BRAND := google
PRODUCT_DEVICE := maguro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

# Override some build.prop settings for maguro
PRODUCT_BUILD_PROP_OVERRIDES += \
	PRODUCT_NAME=takju \
	BUILD_NUMBER=1158763 \
	BUILD_FINGERPRINT="google/takju/maguro:4.4.3/KTU84M/1158763:user/release-keys" \
	PRIVATE_BUILD_DESC="takju-user 4.4.3 KTU84M 1158763 release-keys"
	
PRODUCT_PROPERTY_OVERRIDES += \
    camera.flash_off=0

# Import Shiny's maguro overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/shiny/overlay/maguro

# Add maguro-specific packages
PRODUCT_PACKAGES += \
    Stk
	
# Enable Bluetooth LE for maguro
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml
