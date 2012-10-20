# Generic cyanogenmod product
PRODUCT_NAME := mrom
PRODUCT_BRAND := htc
PRODUCT_DEVICE := vivow

PRODUCT_COPY_FILES += \
	vendor/mrom/prebuilt/common/system/app/HoloLauncher.apk:system/app/HoloLauncher.apk \
	vendor/mrom/prebuilt/common/system/app/MIUIcamera.apk:system/app/MIUIcamera.apk
