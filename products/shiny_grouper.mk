# Grouper props root
GROUPER_PROPS_ROOT=vendor/shiny/proprietary/grouper

# Current method to pass device name to installer
export AOSP_INTENDED_DEVICE=grouper

# TODO: inherit the other makefiles here

# Setup device specific product configuration
PRODUCT_NAME := shiny_grouper
PRODUCT_BRAND := google
PRODUCT_DEVICE := grouper
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := asus

# Import Shiny's grouper overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/shiny/overlay/grouper
