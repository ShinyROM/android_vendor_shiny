# Toro props root
TORO_PROPS_ROOT=vendor/shiny/proprietary/toro

# Current method to pass device name to installer
export AOSP_INTENDED_DEVICE=toro

# Inherit common Shiny product configuration.
$(call inherit-product, vendor/shiny/products/shiny_common.mk)

# Inherit common Shiny phone configuration.
$(call inherit-product, vendor/shiny/products/shiny_common_phone.mk)

# Inherit Shiny tuna device configuration.
$(call inherit-product, vendor/shiny/products/shiny_tuna.mk)

# Inherit AOSP device configuration for toro.
$(call inherit-product, device/samsung/toro/aosp_toro.mk)

# Toro's custom kernel path
TARGET_PREBUILT_KERNEL := kernel/samsung/tuna/arch/arm/boot/zImage

# Setup device specific product configuration.
PRODUCT_NAME := shiny_toro
PRODUCT_BRAND := google
PRODUCT_DEVICE := toro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

# Override some build.prop settings for toro
PRODUCT_BUILD_PROP_OVERRIDES += \
	PRODUCT_NAME=mysid \
	BUILD_NUMBER=937116 \
	BUILD_FINGERPRINT="google/mysid/toro:4.4.2/KOT49H/937116:user/release-keys" \
	PRIVATE_BUILD_DESC="mysid-user 4.4.2 KOT49H 937116 release-keys"
	
PRODUCT_PROPERTY_OVERRIDES += \
    camera.flash_off=0

# Import Shiny's toro overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/shiny/overlay/toro

# Add toro-specific packages
PRODUCT_PACKAGES += \
    Stk

# Add toro proprietary apps
PRODUCT_COPY_FILES +=  \
    $(TORO_PROPS_ROOT)/app/VerizonSSO.apk:system/app/VerizonSSO.apk \
	$(TORO_PROPS_ROOT)/app/VZWAPNLib.apk:system/app/VZWAPNLib.apk \
	$(TORO_PROPS_ROOT)/app/VZWAPNService.apk:system/app/VZWAPNService.apk
	
# Add toro proprietary libs
PRODUCT_COPY_FILES += \
    $(TORO_PROPS_ROOT)/lib/libmotricity.so:system/lib/libmotricity.so
    
# Add toro proprietary permissions
PRODUCT_COPY_FILES += \
	$(TORO_PROPS_ROOT)/etc/permissions/com.vzw.hardware.ehrpd.xml:system/etc/permissions/com.vzw.hardware.ehrpd.xml \
	$(TORO_PROPS_ROOT)/etc/permissions/com.vzw.hardware.lte.xml:system/etc/permissions/com.vzw.hardware.lte.xml \
	$(TORO_PROPS_ROOT)/etc/permissions/com.vzw.vzwapnlib.xml:system/etc/permissions/com.vzw.vzwapnlib.xml
	
# Enable Bluetooth LE for toro
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml
