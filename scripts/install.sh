#!/usr/bin/bash

set -v

ROOT_DIR=$PWD/../
CP_ARGS="-b --suffix='.old'"

function install_vim_config()
{
	cp $CP_ARGS $ROOT_DIR/vim/vimrc $HOME/.vimrc
}

function install_git_config()
{
	cp $CP_ARGS $ROOT_DIR/git/gitconfig $HOME/.gitconfig
}

function install_alacritty_config()
{
	mkdir $HOME/.config/alacritty
	cp $CP_ARGS $ROOT_DIR/alacritty/alacritty.toml $HOME/.config/alacritty/
	mkdir -p $HOME/.config/alacritty/themes
	git clone https://github.com/alacritty/alacritty-theme \
		$HOME/.config/alacritty/themes
}

function install_i3_config()
{
	cp $CP_ARGS $ROOT_DIR/i3/config $HOME/.config/i3/
}

echo "Start config install"
install_vim_config
install_git_config
install_alacritty_config
install_i3_config
echo "Installation finished"
echo "Old configs are backed up"

