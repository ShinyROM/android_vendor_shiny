# Common props root
COMMON_PHONE_PROPS_ROOT=vendor/shiny/proprietary/common/phone

# Generic product
PRODUCT_NAME := shiny
PRODUCT_BRAND := shiny
PRODUCT_DEVICE := generic_phone

# Private system apps
PRODUCT_COPY_FILES += \
	$(COMMON_PHONE_PROPS_ROOT)/priv-app/GoogleDialer.apk:system/priv-app/GoogleDialer.apk \
	$(COMMON_PHONE_PROPS_ROOT)/priv-app/GoogleDialer.odex:system/priv-app/GoogleDialer.odex
