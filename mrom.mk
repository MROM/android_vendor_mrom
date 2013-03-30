# Generic cyanogenmod product

PRODUCT_COPY_FILES += \
	vendor/mrom/prebuilt/common/system/etc/init.d/90mrom:system/etc/init.d/90mrom \
	vendor/mrom/prebuilt/common/system/lib/libqpic106.so:system/lib/libqpic106.so \
	vendor/mrom/prebuilt/common/system/app/QuickPic.apk:system/app/QuickPic.apk \
	vendor/mrom/prebuilt/common/system/app/CobaltInferno.apk:system/app/CobaltInferno.apk \
	vendor/mrom/CHANGELOG-MROM.txt:system/etc/CHANGELOG-MROM.txt

$(call inherit-product, vendor/mrom/mrom-$(CM_BUILD).mk)

PRODUCT_PACKAGES += \
    MROM

# PRODUCT_PROPERTY_OVERRIDES +=

