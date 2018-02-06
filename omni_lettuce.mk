# Release name
PRODUCT_RELEASE_NAME := lettuce

# Specify phone tech before including full_phone
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_PACKAGES += \
    charger_res_images \
    charger

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/dt.img:dt.img \
    $(LOCAL_PATH)/kernel:kernel \
    $(LOCAL_PATH)/recovery.fstab:root/etc/recovery.fstab

# Time Zone data for recovery
PRODUCT_COPY_FILES += \
    bionic/libc/zoneinfo/tzdata:recovery/root/system/usr/share/zoneinfo/tzdata

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := lettuce
PRODUCT_NAME := omni_lettuce
PRODUCT_BRAND := YU
PRODUCT_MODEL := Yuphoria
PRODUCT_MANUFACTURER := YU

# Enable stock zip packages flash
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.build.product=YUPHORIA \
    ro.product.device=YUPHORIA
