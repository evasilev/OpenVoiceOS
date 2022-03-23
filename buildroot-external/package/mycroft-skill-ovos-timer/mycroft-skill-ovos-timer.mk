################################################################################
#
# mycroft-skill-timer
#
################################################################################

MYCROFT_SKILL_OVOS_TIMER_VERSION = c9a18ac1b14f953b75a0f5e1e9f99913b0a7b5bc
MYCROFT_SKILL_OVOS_TIMER_SITE = https://github.com/OpenVoiceOS/skill-ovos-timer
MYCROFT_SKILL_OVOS_TIMER_SITE_METHOD = git
MYCROFT_SKILL_OVOS_TIMER_DIRLOCATION = home/mycroft/.local/share/mycroft/skills
MYCROFT_SKILL_OVOS_TIMER_DIRNAME = skill-ovos-timer.openvoiceos

define MYCROFT_SKILL_OVOS_TIMER_INSTALL_TARGET_CMDS
	mkdir -p $(TARGET_DIR)/$(MYCROFT_SKILL_OVOS_TIMER_DIRLOCATION)/$(MYCROFT_SKILL_OVOS_TIMER_DIRNAME)
	cp -dpfr $(@D)/* $(TARGET_DIR)/$(MYCROFT_SKILL_OVOS_TIMER_DIRLOCATION)/$(MYCROFT_SKILL_OVOS_TIMER_DIRNAME)
	cp -dpfr $(MYCROFT_SKILL_OVOS_TIMER_DL_DIR)/git/.git* \
		$(TARGET_DIR)/$(MYCROFT_SKILL_OVOS_TIMER_DIRLOCATION)/$(MYCROFT_SKILL_OVOS_TIMER_DIRNAME)
endef

$(eval $(generic-package))
