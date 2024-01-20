
##############################################################
#
# LDD-ASSIGNMENT
#
##############################################################

#DONE: Fill up the contents below in order to reference your assignment 3 git contents
LDD_VERSION = '03daa325a6428ab985bd936eb17a522c1610f944'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
LDD_SITE = 'git@github.com:cu-ecen-aeld/assignments-3-and-later-Shifting5164.git'
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES
LDD_MODULE_SUBDIRS = aesd-char-driver/

define LDD_BUILD_CMDS
endef

define LDD_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_unload $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar-start-stop $(TARGET_DIR)/etc/init.d/S99aesdchardriver
endef

$(eval $(kernel-module))
$(eval $(generic-package))
