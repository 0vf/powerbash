install:
	@if [ $$(id -u) -eq 0 ]; then $(MAKE) install-root; else $(MAKE) install-user; fi
install-root:
	@printf "\nInstalling as root...\n\n"
	mkdir -p /usr/local/share/powerbash
	cp powerbash.bash-theme /usr/local/share/powerbash
	cp LICENSE /usr/local/share/powerbash
	@printf "\nInstallation complete!\n\n"
	@printf "Run the following commands to add powerbash to your shell:\n"
	@printf "$$ echo \"source /usr/local/share/powerbash/powerbash.bash-theme\" >> ~/.bashrc\n"
	@printf "$$ exec bash\n"
	@printf "$$ pbash cfg\n"
install-user:
	@printf "\nInstalling as user...\n\n"
	mkdir -p ~/.local/share
	cp -r . ~/.local/share/powerbash
	@printf "\nInstallation complete!\n\n"
	@printf "Run the following commands to add powerbash to your shell:\n"
	@printf "$$ echo \"source ~/.local/share/powerbash.bash-theme\" >> ~/.bashrc\n"
	@printf "$$ exec bash\n"
	@printf "$$ pbash cfg\n"
