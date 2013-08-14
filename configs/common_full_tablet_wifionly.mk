# Inherit common CM stuff
$(call inherit-product, vendor/mahdi/configs/common_full.mk)

# BT config
PRODUCT_COPY_FILES += \
    system/bluetooth/data/main.nonsmartphone.conf:system/etc/bluetooth/main.conf

