{ config, pkgs, ... }:

{

	networking.hostName = "nixos";

	# networking.wireless.enable = true; # Enable wireless support via wpa_supplicant

	networking.networkmanager.enable = true;

	# Firewall settings (if necessary)
	# networking.firewall = {
	#
	#	enable = false;
	#	allowedTCPPorts = [ ... ];
	#	allowedUDPPorts = [ ... ];
	#
	# };

}
