#!/bin/bash
pacman -S \
	network-manager-applet \
	networkmanager \
	axel \
	unzip \
	openssh \
	sshuttle \
	dunst \
	xf86-input-synaptics \
	feh \
	xclip \
	elementary-icon-theme \
	lxappearance \
	pcmanfm \
	i3-gaps \
	rofi \
	vlc \
	emacs \
	gimp \
	clementine \
	gst-libav \
	gst-plugins-bad \
	gst-plugins-base \
	gst-plugins-good \
	gst-plugins-ugly \
	lightdm \
	mysql-workbench \
	mariadb-clients \
	xorg-xinit \
	xorg-server \
	firefox \
	dmenu \
	ttf-droid \
	ttf-dejavu \
	alsa-utils \
	pulseaudio \
	xorg \
	i3 \
	ttf-roboto \
	xterm \
	pavucontrol \
	pulseaudio \
	ttf-hack \
	git \
	emacs  \
	openconnect \
	base-devel \
	lvm2 \
	thunderbird \
	volumeicon \
	arandr \
	device-mapper \
	tmux \
	compton \
	nitrogen \
	xfce4-power-manager \
	vi \
	vim \
	grub \
	efibootmgr \
	sudo \
	i3 \
	xf86-video-intel \
	xorg-fonts \
	docker \
	docker-compose \
    mariadb-clients \
    htop\
    xarchiver \
    networkmanager-openconnect \
    polkit-gnome \
    gnome-keyring \
    udisks2 \
    lightdm-gtk-greeter

systemctl enable lightdm

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
yay rambox
yay clipit
