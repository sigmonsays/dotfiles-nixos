##
all:
	# deploy        install and rebuild
	# rebuild       rebuild system
	# pull          git pull
	# install       copy files to /etc/nixos
	# gc            garbage collect

deploy: N=default
deploy: install rebuild

rebuild:
	sudo nixos-rebuild switch

install: N=default
install:
	sudo ./install.sh $(N)

pull:
	git pull

gc:
	nix-env --delete-generations 14d

# end
