# Generic cyanogenmod product

PRODUCT_COPY_FILES += \
	vendor/mrom/prebuilt/common/system/etc/init.d/90mrom:system/etc/init.d/90mrom \
	vendor/mrom/CHANGELOG-MROM.txt:system/etc/CHANGELOG-MROM.txt

$(call inherit-product, vendor/mrom/mrom-$(CM_BUILD).mk)

PRODUCT_PACKAGES += \
    MROM

#PRODUCT_PACKAGES += \
#    AOKPtips \
#    AppWidgetPicker \
#    LatinImeDictionaryPack \
#    mGerrit \
#    Microbes \
#    PermissionsManager \
#    ROMControl \
#    Superuser \
#    su \
#    SwagPapers \
#    Torch \
#    UnicornPorn


# PRODUCT_PROPERTY_OVERRIDES +=

