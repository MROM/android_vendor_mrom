# Generic cyanogenmod product
PRODUCT_NAME := mrom
PRODUCT_BRAND := motorola
PRODUCT_DEVICE := olympus

PRODUCT_COPY_FILES += \
	vendor/mrom/prebuilt/common/system/lib/libnmea.so.234:system/lib/libnmea.so.234 \
	vendor/mrom/prebuilt/common/system/bin/gpsfix234:system/bin/gpsfix234 \
	vendor/mrom/prebuilt/common/system/app/HoloLauncher.apk:system/app/HoloLauncher.apk \
	vendor/mrom/prebuilt/common/system/app/BatteryFix.apk:system/app/BatteryFix.apk
