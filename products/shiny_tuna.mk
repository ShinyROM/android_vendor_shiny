# Tuna props root
TUNA_PROPS_ROOT=vendor/shiny/proprietary/tuna

# Import Shiny's tuna overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/shiny/overlay/tuna

# Disable some graphical artifacts as of 4.4
PRODUCT_PROPERTY_OVERRIDES += \
	ro.zygote.disable_gl_preload=true

# Make sure data roaming is turned off by default - leave this device specific for now
PRODUCT_PROPERTY_OVERRIDES += \
	ro.com.android.dataroaming=false

# The correct size boot animation for tuna devices
# TODO: In the future, this should be done in common.mk with some kind of 
# coded determination of screen size and selection of the appropriate bootanimation
PRODUCT_COPY_FILES += \
	$(TUNA_PROPS_ROOT)/media/bootanimation.zip:system/media/bootanimation.zip
	
# Libs common to tuna devices
PRODUCT_COPY_FILES += \
	$(TUNA_PROPS_ROOT)/lib/libjni_mosaic.so:system/lib/libjni_mosaic.so
