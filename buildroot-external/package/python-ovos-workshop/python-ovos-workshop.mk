################################################################################
#
# python-ovos-workshop
#
################################################################################

PYTHON_OVOS_WORKSHOP_VERSION = cc29b213c88c934f5fb17c3dadda007b6ed372bb
PYTHON_OVOS_WORKSHOP_SITE = $(call github,OpenVoiceOS,OVOS-workshop,$(PYTHON_OVOS_WORKSHOP_VERSION))
PYTHON_OVOS_WORKSHOP_SETUP_TYPE = setuptools
PYTHON_OVOS_WORKSHOP_LICENSE_FILES = LICENSE
PYTHON_OVOS_WORKSHOP_ENV = MYCROFT_LOOSE_REQUIREMENTS=true

$(eval $(python-package))
