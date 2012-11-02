# Generic cyanogenmod product
PRODUCT_NAME := mrom
PRODUCT_BRAND := motorola
PRODUCT_DEVICE := olympus

PRODUCT_COPY_FILES += \
	vendor/mrom/prebuilt/common/system/app/MIUIcamera.apk:system/app/MIUIcamera.apk 

PRODUCT_PACKAGES += \
    BatteryFix

