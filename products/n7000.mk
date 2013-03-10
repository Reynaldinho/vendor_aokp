# Inherit AOSP device configuration for n7000.
$(call inherit-product, device/samsung/n7000/full_n7000.mk)

# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# s2-common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/i9100

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := n7000
PRODUCT_NAME := aokp_n7000
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := GT-N7000

#Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-N7000 TARGET_DEVICE=GT-N7000 BUILD_FINGERPRINT=samsung/GT-N7000/GT-N7000:4.0.3/IML74K/ZCLP6:user/release-keys PRIVATE_BUILD_DESC="GT-N7000-user 4.0.3 IML74K ZCLP6 release-keys"

# boot animation
PRODUCT_COPY_FILES += \
vendor/aokp/prebuilt/bootanimation/bootanimation_720_1280.zip:system/media/bootanimation-alt.zip