# Inherit common stuff
$(call inherit-product, vendor/derp/config/common.mk)

# World APN list
PRODUCT_COPY_FILES += \
    vendor/derp/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

# World SPN overrides list
PRODUCT_COPY_FILES += \
    vendor/derp/prebuilt/common/etc/spn-conf.xml:system/etc/spn-conf.xml

# Selective SPN list for operator number who has the problem.
PRODUCT_COPY_FILES += \
    vendor/derp/prebuilt/common/etc/selective-spn-conf.xml:system/etc/selective-spn-conf.xml

# Phone related apps
PRODUCT_PACKAGES += \
    messaging \
    Stk
