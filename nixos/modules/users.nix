{ config, pkgs, ... }: 

{

	users.users.wessel = {

		isNormalUser = true;
		description = "Wessel";
		extraGroups = [

			"networkmanager"
			"wheel"

		];

	};

}
