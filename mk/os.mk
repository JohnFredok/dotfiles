# DOTFILES
# https://nickgerace.dev

brew:
	brew install \
		aspell curl git htop make neovim speedtest-cli tmux tree wget nodejs \
		go helm k3d kind kubectl
	brew tap homebrew/cask-fonts
	brew cask install font-iosevka font-iosevka-slab

apt:
	sudo apt update
	sudo apt install \
		git fish zsh tree cloc speedtest-cli \
		wget curl make tmux \
		vim neovim neofetch aspell htop \
		llvm llvm-dev libssl-dev nodejs \
		build-essential
	sudo apt upgrade
	sudo apt autoremove
	@printf "\nInstall the following...\n\
		oh-my-zsh\n\
		docker\n\
		kind\n\
		kubectl\n\
		helm\n\
		go\n\
		rust (rustup)\n\
		\n"

apt-desktop:
	sudo apt update
	sudo apt install nvme-cli efibootmgr fwupd ubuntu-restricted-extras
	sudo apt upgrade
	sudo apt autoremove

dnf:
	sudo dnf check-update
	sudo dnf install \
		git \
		fish \
		zsh \
		tree \
		cloc \
		speedtest-cli \
		llvm \
		wget \
		curl \
		make \
		tmux \
		vim \
		neovim \
		nvme-cli \
		neofetch \
		aspell \
		htop \
		fwupd \
		efibootmgr
		qemu \
		musl-gcc \
		musl-libc \
		aspell-en \
		g++ \
		nodejs \
		openssl-devel \
		zlib-devel \
		@development-tools \
		util-linux-user 
	sudo dnf install \
		https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(shell rpm -E %fedora).noarch.rpm \
		https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(shell rpm -E %fedora).noarch.rpm
	sudo dnf check-update
	sudo dnf groupupdate Multimedia
	sudo dnf autoremove
	@printf "\nInstall the following...\n\
		oh-my-zsh\n\
		docker\n\
		kind\n\
		kubectl\n\
		helm\n\
		go\n\
		rust (rustup)\n\
		\n"

dnf-gtk:
	sudo dnf check-update
	sudo dnf install gtk3-devel glib clutter-devel webkit2gtk3-devel libgda-devel gobject-introspection-devel

dnf-cgroups-v1:
	sudo dnf install -y grubby
	sudo grubby \
		--update-kernel=ALL \
		--args="systemd.unified_cgroup_hierarchy=0"
	sudo systemctl reboot

dnf-docker-fedora-32:
	sudo dnf install dnf-plugins-core
	sudo dnf config-manager \
		--add-repo \
		https://download.docker.com/linux/fedora/docker-ce.repo
	sudo sed -i 's/$$releasever/31/g' /etc/yum.repos.d/docker-ce.repo
	sudo dnf install docker-ce docker-ce-cli containerd.io
	sudo systemctl start docker
	sudo systemctl enable docker
	sudo usermod -aG docker $(shell whoami)
	firewall-cmd --permanent --zone=trusted --add-interface=docker0
	firewall-cmd --reload
	sudo docker run hello-world

