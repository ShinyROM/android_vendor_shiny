# Tuna props root
TUNA_PROPS_ROOT=vendor/shiny/proprietary/tuna

# Import Shiny's tuna overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/shiny/overlay/tuna

# Disable some graphical artifacts as of 4.4
PRODUCT_PROPERTY_OVERRIDES += \
	ro.zygote.disable_gl_preload=true

# Setup sounds configuration
# TODO: We need to decide whether or not all devices are going to carry
# the same sounds, or stick with their specific ones
PRODUCT_PROPERTY_OVERRIDES += \
	ro.config.ringtone=Themos.ogg \
	ro.config.notification_sound=Proxima.ogg \
	ro.config.alarm_alert=Cesium.ogg

$(call inherit-product-if-exists, frameworks/base/data/sounds/AudioPackage7.mk)

# Make sure data roaming is turned off by default - leave this device specific for now
PRODUCT_PROPERTY_OVERRIDES += \
	ro.com.android.dataroaming=false

# The correct size boot animation for tuna devices
# TODO: In the future, this should be done in common.mk with some kind of 
# coded determination of screen size and selection of the appropriate bootanimation
PRODUCT_COPY_FILES += \
	$(TUNA_PROPS_ROOT)/media/bootanimation.zip:system/media/bootanimation.zip
