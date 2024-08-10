#!/usr/bin/env bash

has_personal_bashrc_import=$(grep -E "^(source|\.) ~/.bashrc.personal$" ~/.bashrc)

if [ $? != 0 ]; then
	echo -e "\nsource ~/.bashrc.personal\n" >> ~/.bashrc
fi

ln -si "$(pwd)/bash/bashrc.personal" ~/.bashrc.personal

# ln hyprland ~/.config/hypr

ln -si "$(pwd)/vim/vimrc" ~/.vimrc

# ln waybar ~/.config/waybar

#ln -s sddm/themes/where_is_my_sddm_theme /usr/share/sddm/themes

ln -i "$(pwd)/bash/pac" ~/.local/bin/

