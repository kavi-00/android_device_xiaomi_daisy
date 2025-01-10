#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := RemovePkgs
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := \
    AmbientSensePrebuilt \
    AppDirectedSMSService \
    ConnMO \
    Drive \
    DCMO \
    DevicePolicyPrebuilt \
    DMService \
    GCS \
    GoogleCamera \
	GoogleLocationHistory \
    MaestroPrebuilt \
    Maps \
    MicropaperPrebuilt \
    MusicFX \
    MyVerizonServices \
    NgaResources \
    OBDM_Permissions \
    obdm_stub \
    oemDmTrigger \
    OPScreenRecord \
    Ornament \
    Papers \
    PrebuiltGmail \
    PixelLiveWallpaperPrebuilt \
    RecorderPrebuilt \
    SafetyHubPrebuilt \
    SCONE \
    ScribePrebuilt \
    Showcase \
    Snap \
    SoundAmplifierPrebuilt \
    SprintDM \
    SprintHM \
    TurboPrebuilt \
    Tycho \
    TipsPrebuilt \
    talkback \
    USCCDM \
    Velvet \
    Videos \
    Video \
    VZWAPNLib \
    VzwOmaTrigger \
    YouTube \
    YouTubeMusicPrebuilt \
    Flipendo
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := /dev/null
include $(BUILD_PREBUILT)

ifeq ($(USES_DEVICE_XIAOMI_DAISY),true)

include $(call all-makefiles-under,$(LOCAL_PATH))

endif
