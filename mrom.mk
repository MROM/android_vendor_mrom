# Generic cyanogenmod product

PRODUCT_COPY_FILES += \
	vendor/mrom/prebuilt/common/system/etc/init.d/90mrom:system/etc/init.d/90mrom \
	vendor/mrom/prebuilt/common/system/lib/libqpic106.so:system/lib/libqpic106.so \
	vendor/mrom/prebuilt/common/system/app/QuickPic.apk:system/app/QuickPic.apk \
	vendor/mrom/CHANGELOG-MROM.txt:system/etc/CHANGELOG-MROM.txt

$(call inherit-product, vendor/mrom/mrom-$(CM_BUILD).mk)

PRODUCT_PACKAGES += \
    ROMControl \
    MROM

#PRODUCT_PACKAGES += \
#    AOKPtips \
#    AppWidgetPicker \
#    LatinImeDictionaryPack \
#    mGerrit \
#    Microbes \
#    PermissionsManager \
#    Superuser \
#    su \
#    SwagPapers \
#    Torch \
#    UnicornPorn


# PRODUCT_PROPERTY_OVERRIDES +=

