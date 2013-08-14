# GSM APN list
PRODUCT_COPY_FILES += \
    vendor/mahdi/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

# GSM SPN list
PRODUCT_COPY_FILES += \
    vendor/mahdi/prebuilt/common/etc/spn-conf.xml:system/etc/spn-conf.xml

# SIM toolkit
PRODUCT_PACKAGES += \
    Stk
