# Recents
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.recents.grid=true \
    persist.sys.systemuiplugin.enabled=true \
    persist.boringdroid.peek_caption=true

PRODUCT_PACKAGES := \
    BoringdroidSettings \
    BoringdroidSystemUI \
    BoringdroidFrameworkOverlay \
    BoringdroidWallpaperOverlay \
    BoringdroidLauncher3Overlay \

# Ship the privapp-permissions allowlist for BoringdroidSystemUI. The APK joins
# SystemUI's shared UID (android.uid.systemui) so its FORCE_STOP_PACKAGES grant
# reaches the SystemUI process at runtime — the plugin needs that permission to
# kick the home launcher after attaching the taskbar window. See
# vendor/boringdroid/apps/BoringdroidSystemUI/app/src/main/AndroidManifest.xml.
PRODUCT_COPY_FILES += \
    vendor/boringdroid/permissions/privapp-permissions-com.boringdroid.systemui.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-com.boringdroid.systemui.xml

# rro overlay
# PRODUCT_PACKAGES += \
#     BoringdroidSystemUIOverlay
