GET_VERSION := vendor/derp/build/tools/getversion.py
DERP_STATUS := $(shell $(GET_VERSION) status)
BUILD_TYPE := $(shell $(GET_VERSION) buildtype)
DERP_BRANDING_VERSION := $(BUILD_TYPE)
DERP_VERSION := $(shell $(GET_VERSION) version)

ifneq ($(SIGNING_KEYS),)
    PRODUCT_DEFAULT_DEV_CERTIFICATE := $(SIGNING_KEYS)/releasekey
endif
