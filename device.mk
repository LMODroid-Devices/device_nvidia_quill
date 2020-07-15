#
# Copyright (C) 2019 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

TARGET_REFERENCE_DEVICE ?= quill
TARGET_TEGRA_VARIANT    ?= common

$(call inherit-product, device/nvidia/t186-common/t186.mk)

PRODUCT_CHARACTERISTICS  := tv
PRODUCT_AAPT_CONFIG      := xlarge large
PRODUCT_AAPT_PREF_CONFIG := xxhdpi
TARGET_SCREEN_HEIGHT     := 1920
TARGET_SCREEN_WIDTH      := 1080

$(call inherit-product, frameworks/native/build/tablet-10in-xhdpi-2048-dalvik-heap.mk)

# Init related
PRODUCT_PACKAGES += \
    fstab.lightning \
    fstab.orbitty \
    fstab.quill \
    fstab.storm \
    init.lightning.rc \
    init.orbitty.rc \
    init.quill.rc \
    init.storm.rc \
    init.quill_common.rc \
    init.recovery.lightning.rc \
    init.recovery.orbitty.rc \
    init.recovery.quill.rc \
    init.recovery.storm.rc \
    power.lightning.rc \
    power.orbitty.rc \
    power.quill.rc \
    power.storm.rc

# Kernel
ifneq ($(TARGET_PREBUILT_KERNEL),)
PRODUCT_COPY_FILES += \
    $(TARGET_PREBUILT_KERNEL):kernel
endif
