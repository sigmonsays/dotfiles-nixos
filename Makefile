##
all:
	# deploy        install and rebuild
	# rebuild       rebuild system
	# pull          git pull
	# install       copy files to /etc/nixos
	# gc            garbage collect

deploy: install rebuild

rebuild:
	sudo nixos-rebuild switch

install:
	sudo ./install.sh

pull:
	git pull

gc:
	nix-env --delete-generations 14d

# end
