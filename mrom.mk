# Generic cyanogenmod product

PRODUCT_COPY_FILES += \
	vendor/mrom/prebuilt/common/system/etc/init.d/90mrom:system/etc/init.d/90mrom \
	vendor/mrom/prebuilt/common/system/lib/libqpicjni99.so:system/lib/libqpic106.so \
	vendor/mrom/prebuilt/common/system/xbin/su:system/xbin/su \
	vendor/mrom/prebuilt/common/system/app/QuickPic.apk:system/app/QuickPic.apk \
	vendor/mrom/prebuilt/common/system/app/Mixer-CM9.apk:system/app/Mixer-CM9.apk \
	vendor/mrom/prebuilt/common/system/app/Supersu.apk:system/app/Supersu.apk \
	vendor/mrom/CHANGELOG-MROM.txt:system/etc/CHANGELOG-MROM.txt

$(call inherit-product, vendor/mrom/mrom-$(CM_BUILD).mk)

PRODUCT_PACKAGES += \
    MROM

