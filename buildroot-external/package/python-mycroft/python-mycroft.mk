################################################################################
#
# python-mycroft
#
################################################################################

PYTHON_MYCROFT_VERSION = 3651bdcca942e97012962937882b73bc52adbd89
PYTHON_MYCROFT_SITE = $(call github,MycroftAI,mycroft-core,$(PYTHON_MYCROFT_VERSION))
PYTHON_MYCROFT_SETUP_TYPE = setuptools
PYTHON_MYCROFT_LICENSE_FILES = LICENSE

$(eval $(python-package))
