{ config, pkgs, ... }:

{

	# Disable for Wayland
	services.xserver.enable = false;

	# Default KDE Plasma6 settings
	services.displayManager.sddm = {

		enable = true;
		wayland.enable = true;	
	
	};

	services.desktopManager.plasma6.enable = true;

	# X11 Keymap configuration
	# services.xserver.xkb = {

	# 	layout = "us";
	# 	variant = "";

	# };

}
