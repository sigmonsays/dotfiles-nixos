##
all:
	# gc            garbage collect
	# rebuild       rebuild system
	# pull          git pull
	# install       copy files to /etc/nixos

rebuild:
	sudo nixos-rebuild switch

install:
	./install.sh

pull:
	git pull

gc:
	nix-env --delete-generations 14d

# end
