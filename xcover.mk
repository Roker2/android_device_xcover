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

# These is the hardware-specific overlay, which points to the location
# of hardware-specific resource overrides, typically the frameworks and
# application settings that are stored in resourced.
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,device/samsung/xcover/prebuilt/modules,system/lib/modules)

PRODUCT_COPY_FILES += \
	device/samsung/xcover/prebuilt/init.rc:root/init.rc \
	device/samsung/xcover/prebuilt/lpm.rc:root/lpm.rc \
	device/samsung/xcover/prebuilt/ueventd.pxa968.rc:root/ueventd.pxa968.rc

PRODUCT_COPY_FILES += \
	device/samsung/xcover/prebuilt/zinitix_touch.idc:system/usr/idc/zinitix_touch.idc

PRODUCT_PACKAGES += \
	libvmeta \
	libvmetahal \
	libmiscgen \
	libcodecaacdec \
	libcodecaacenc \
	libcodecmp3dec \
	libcodech263dec \
	libcodech264dec \
	libcodecmpeg4dec \
	libcodecmpeg2dec \
	libcodecwmvdec \
	libcodecamrnbdec \
	libcodecamrnbenc \
	libcodecamrwbdec \
	libcodecamrwbenc \
	libcodecg711 \
	libcodecjpegdec \
	libcodecjpegenc \
	libcodecmpeg4enc \
	libcodech264enc \
	libcodech263enc \
	libcodecvmetadec \
	libcodecvmetaenc \
	libcodecwmadec

$(call inherit-product-if-exists, vendor/samsung/xcover/xcover-vendor.mk)

ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/samsung/xcover/prebuilt/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif
