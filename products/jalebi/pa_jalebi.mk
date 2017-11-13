# Copyright (C) 2017 Paranoid Android
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

TARGET_BOOT_ANIMATION_RES := 720

# Use AOSP camera application.
TARGET_USES_AOSP_CAMERA := true

include device/qcom/common/common.mk

# Inherit from jalebi device
$(call inherit-product, device/yu/jalebi/device.mk)

# Must define platform variant before including any common things
TARGET_BOARD_PLATFORM_VARIANT := msm8916

# Device identifier. This must come after all inclusions
BOARD_VENDOR := yu
PRODUCT_BRAND := YU
PRODUCT_DEVICE := jalebi
PRODUCT_NAME := pa_jalebi
PRODUCT_MANUFACTURER := YU
PRODUCT_MODEL := YU4711

PRODUCT_GMS_CLIENTID_BASE := android-micromax

# Paranoid Android platform
include vendor/pa/main.mk