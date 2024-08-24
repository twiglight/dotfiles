#!/usr/bin/env bash

function has_personal_bashrc_import() {
	grep -E "^(source|\.) ~/.bashrc.personal$" ~/.bashrc >> /dev/null 2>&1
}

if ! has_personal_bashrc_import; then
	echo "Updating .bashrc with personal file"
	echo -e "\nsource ~/.bashrc.personal\n" >> ~/.bashrc
fi

ln -si "$(pwd)/bash/bashrc.personal" ~/.bashrc.personal
ln -si "$(pwd)/hyprland" ~/.config/hypr
ln -si "$(pwd)/vim/vimrc" ~/.vimrc
ln -si "$(pwd)/waybar" ~/.config/waybar
sudo ln -si "$(pwd)/sddm/themes/where_is_my_sddm_theme" /usr/share/sddm/themes
ln -si "$(pwd)/pacman/pac" ~/.local/bin/
ln -si "$(pwd)/zypper/zyp" ~/.local/bin/
ln -si "$(pwd)/river" ~/.config/river
