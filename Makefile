PREFIX ?= /usr/local
install:
	@if [ $$(id -u) -eq 0 ]; then $(MAKE) install-root; else $(MAKE) install-user; fi
install-root:
	@printf "Using prefix ${PREFIX}...\n"
	@printf "Installing as root...\n\n"
	mkdir -p ${PREFIX}/share/powerbash
	cp powerbash.bash-theme ${PREFIX}/share/powerbash
	cp -r commands ${PREFIX}/share/powerbash
	cp -r modules ${PREFIX}/share/powerbash
	cp LICENSE ${PREFIX}/share/powerbash
	@printf "\nInstallation complete!\n\n"
	@printf "Run the following commands to add powerbash to your shell:\n"
	@printf "$$ echo \"source ${PREFIX}/share/powerbash/powerbash.bash-theme\" >> ~/.bashrc\n"
	@printf "$$ exec bash\n"
	@printf "$$ pbash cfg\n"
install-user:
	@printf "Installing as user...\n\n"
	mkdir -p ~/.local/share
	cp -r . ~/.local/share/powerbash
	@printf "\nInstallation complete!\n\n"
	@printf "Run the following commands to add powerbash to your shell:\n"
	@printf "$$ echo \"source ~/.local/share/powerbash.bash-theme\" >> ~/.bashrc\n"
	@printf "$$ exec bash\n"
	@printf "$$ pbash cfg\n"
