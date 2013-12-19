# Grouper props root
FLO_PROPS_ROOT=vendor/shiny/proprietary/flo

# Current method to pass device name to installer
export AOSP_INTENDED_DEVICE=flo
	
# Inherit common Shiny configuration.
$(call inherit-product, vendor/shiny/products/shiny_common.mk)

# Inherit common Shiny tablet configuration.
$(call inherit-product, vendor/shiny/products/shiny_common_tablet.mk)

# Inherit AOSP device configuration for grouper.
$(call inherit-product, device/asus/flo/aosp_flo.mk)

# Grouper's custom kernel path
TARGET_PREBUILT_KERNEL := kernel/asus/flo/arch/arm/boot/zImage

# Setup device specific product configuration
PRODUCT_NAME := shiny_flo
PRODUCT_BRAND := google
PRODUCT_DEVICE := flo
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := asus

# Import Shiny's grouper overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/shiny/overlay/flo

# The correct size boot animation for flo devices
# TODO: In the future, this should be done in common.mk with some kind of 
# coded determination of screen size and selection of the appropriate bootanimation
PRODUCT_COPY_FILES += \
	$(FLO_PROPS_ROOT)/media/bootanimation.zip:system/media/bootanimation.zip

# Override some build.prop settings for grouper
PRODUCT_BUILD_PROP_OVERRIDES += \
	PRODUCT_NAME=razor \
	BUILD_NUMBER=937116 \
	BUILD_FINGERPRINT="google/razor/flo:4.4.2/KOT49H/937116:user/release-keys" \
	PRIVATE_BUILD_DESC="razor-user 4.4.2 KOT49H 937116 release-keys"
	
PRODUCT_PROPERTY_OVERRIDES += \
    ro.media.effect.bgdropper.adj=0.2 \
	camera.flash_off=0 \
	ro.setupwizard.network_required=true
