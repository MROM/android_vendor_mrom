# Generic cyanogenmod product
PRODUCT_NAME := mrom
PRODUCT_BRAND := mrom
PRODUCT_DEVICE := generic

PRODUCT_COPY_FILES += \
	vendor/mrom/prebuilt/common/system/etc/init.d/90mrom:system/etc/init.d/90mrom \
	vendor/mrom/prebuilt/common/system/lib/libqpicjni96.so:system/lib/libqpicjni96.so \
	vendor/mrom/prebuilt/common/system/bin/fullgpu:system/bin/fullgpu \
	vendor/mrom/prebuilt/common/system/xbin/su:system/xbin/su \
	vendor/mrom/prebuilt/common/system/app/QuickPic.apk:system/app/QuickPic.apk \
	vendor/mrom/prebuilt/common/system/app/Mixer-MROM.apk:system/app/Mixer-MROM.apk \
	vendor/mrom/prebuilt/common/system/app/Supersu.apk:system/app/Supersu.apk \
	vendor/mrom/CHANGELOGMROM.txt:system/etc/CHANGELOG-MROM.txt \
	vendor/mrom/prebuilt/common/system/app/MROM.apk:system/app/MROM.apk

$(call inherit-product, vendor/mrom/mrom-olympus.mk)
$(call inherit-product, vendor/mrom/mrom-encore.mk)
$(call inherit-product, vendor/mrom/mrom-vivow.mk)
