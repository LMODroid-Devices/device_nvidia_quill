# Copyright (C) 2020 The LineageOS Project
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

$(call inherit-product, device/nvidia/t186-common/vendor/t186-by-flags.mk)
$(call inherit-product, device/nvidia/tegra-common/vendor/common-by-flags.mk)
$(call inherit-product, device/nvidia/shield-common/vendor/shield-by-flags.mk)

ifneq ("$(wildcard device/nvidia/quill/vendor/$(TARGET_TEGRA_L4T_BRANCH)/bcm_firmware/bcm.mk)","")
$(call inherit-product, device/nvidia/quill/vendor/$(TARGET_TEGRA_L4T_BRANCH)/bcm_firmware/bcm.mk)
endif

ifneq ("$(wildcard device/nvidia/quill/vendor/$(TARGET_TEGRA_L4T_BRANCH)/realtek/realtek.mk)","")
$(call inherit-product, device/nvidia/quill/vendor/$(TARGET_TEGRA_L4T_BRANCH)/realtek/realtek.mk)
endif

PRODUCT_PACKAGES += public.libraries
