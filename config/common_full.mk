# Inherit common axxion stuff
$(call inherit-product, vendor/axxion/config/common.mk)

# Bring in all video files
$(call inherit-product, frameworks/base/data/videos/VideoPackage2.mk)

# Include axxion audio files
include vendor/axxion/config/axxion_audio.mk

# Include axxion LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/axxion/overlay/dictionaries

# Optional axxion packages
PRODUCT_PACKAGES += \
    Galaxy4 \
    HoloSpiralWallpaper \
    LiveWallpapers \
    LiveWallpapersPicker \
    MagicSmokeWallpapers \
    NoiseField \
    PhaseBeam \
    VisualizationWallpapers \
    PhotoTable \
    SoundRecorder \
    PhotoPhase

PRODUCT_PACKAGES += \
    libvideoeditor_jni \
    libvideoeditor_core \
    libvideoeditor_osal \
    libvideoeditor_videofilters

# Extra tools in Axxion
PRODUCT_PACKAGES += \
    vim
