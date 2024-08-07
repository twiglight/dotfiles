{ config, pkgs, ... } :

{

	# Specific programs that need some more rights?
	programs.firefox.enable = true;
	programs.steam.enable = true;

	programs.vim.defaultEditor = true;

	# General packages
	nixpkgs.config.allowUnfree = true;

	environment.systemPackages = with pkgs; [

		git
		keepassxc
		vim
		vlc
		telegram-desktop
		discord
		kdePackages.kate
		kid3

	];

}
