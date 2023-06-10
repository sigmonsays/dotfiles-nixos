##
all:
	# gc            garbage collect
	# rebuild       rebuild system
	# pull          git pull

rebuild:
	( cd /etc/nixos && sudo nixos-rebuild switch )

pull:
	git pull

gc:
	nix-env --delete-generations 14d

# end
