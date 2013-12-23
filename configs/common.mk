# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/mahdi/overlay/common

# Common dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/mahdi/overlay/dictionaries

# Common product property overrides
PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false

# SELinux
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

# SELinux filesystem labels
PRODUCT_COPY_FILES += \
     vendor/mahdi/prebuilt/common/etc/init.d/50selinuxrelabel:system/etc/init.d/50selinuxrelabel

# init.d support
PRODUCT_COPY_FILES += \
    vendor/mahdi/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/mahdi/prebuilt/common/bin/sysinit:system/bin/sysinit

# userinit support
PRODUCT_COPY_FILES += \
    vendor/mahdi/prebuilt/common/etc/init.d/90userinit:system/etc/init.d/90userinit

# Mahdi-specific init file
PRODUCT_COPY_FILES += \
    vendor/mahdi/prebuilt/common/etc/init.mahdi.rc:root/init.mahdi.rc

# Enable SIP+VoIP
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Don't export PS1 in /system/etc/mkshrc.
PRODUCT_COPY_FILES += \
    vendor/mahdi/prebuilt/common/etc/mkshrc:system/etc/mkshrc

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/mahdi/prebuilt/common/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/mahdi/prebuilt/common/bin/backuptool.functions:system/bin/backuptool.functions \
    vendor/mahdi/prebuilt/common/bin/blacklist:system/addon.d/blacklist \
    vendor/mahdi/prebuilt/common/bin/50-mahdi.sh:system/addon.d/50-mahdi.sh \
    vendor/mahdi/prebuilt/common/bin/99-backup.sh:system/addon.d/99-backup.sh \
    vendor/mahdi/prebuilt/common/etc/backup.conf:system/etc/backup.conf

# Superuser
SUPERUSER_EMBEDDED := false
PRODUCT_COPY_FILES +=  \
    vendor/mahdi/prebuilt/common/app/Superuser.apk:system/app/Superuser.apk \
    vendor/mahdi/prebuilt/common/etc/init.d/99SuperSUDaemon:system/etc/init.d/99SuperSUDaemon \
    vendor/mahdi/prebuilt/common/etc/install-recovery.sh:system/etc/install-recovery.sh \
    vendor/mahdi/prebuilt/common/etc/.has_su_daemon:system/etc/.has_su_daemon \
    vendor/mahdi/prebuilt/common/etc/.installed_su_daemon:system/etc/.installed_su_daemon \
    vendor/mahdi/prebuilt/common/bin/.ext/.su:system/bin/.ext/.su \
    vendor/mahdi/prebuilt/common/xbin/daemonsu:system/xbin/daemonsu \
    vendor/mahdi/prebuilt/common/xbin/su:system/xbin/su

# Terminal Emulator
PRODUCT_COPY_FILES +=  \
    vendor/mahdi/proprietary/Term.apk:system/app/Term.apk \
    vendor/mahdi/proprietary/lib/armeabi/libjackpal-androidterm4.so:system/lib/libjackpal-androidterm4.so

# Xposed Framework apk
PRODUCT_COPY_FILES +=  \
    vendor/mahdi/prebuilt/common/app/XposedInstaller_2.4.1.apk:system/app/XposedInstaller_2.4.1.apk

# AppSettings apk
PRODUCT_COPY_FILES +=  \
    vendor/mahdi/prebuilt/common/app/AppSettings.apk:system/app/AppSettings.apk

# Sunbeam Livewallpaper apk
PRODUCT_COPY_FILES +=  \
    vendor/mahdi/prebuilt/common/app/SunBeam.apk:system/app/SunBeam.apk

# T-Mobile theme engine
include vendor/mahdi/configs/themes_common.mk

# Mahdi packages
PRODUCT_PACKAGES += \
    SoundRecorder \
    Basic \
    CMFileManager \
    LockClock \
    ScreenRecorder \
    libscreenrecorder \
    BluetoothExt \
    Apollo \
    DSPManager \
    libcyanogen-dsp \
    audio_effects.conf \
    MahdiCenter     

# Extra tools
PRODUCT_PACKAGES += \
    bash \
    Basic \
    openvpn \
    e2fsck \
    mke2fs \
    tune2fs \
    bash \
    vim \
    nano \
    htop \
    powertop \
    lsof \
    mount.exfat \
    fsck.exfat \
    mkfs.exfat \
    ntfsfix \
    ntfs-3g

# Openssh
PRODUCT_PACKAGES += \
    scp \
    sftp \
    ssh \
    sshd \
    sshd_config \
    ssh-keygen \
    start-ssh

# rsync
PRODUCT_PACKAGES += \
    rsync

# easy way to extend to add more packages
-include vendor/extra/product.mk

# Inherit common product build prop overrides
-include vendor/mahdi/configs/common_versions.mk
