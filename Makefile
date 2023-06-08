##
all:
	# gc            garbage collect
	# rebuild       rebuild system
	# pull          git pull

rebuild:
	nixos-rebuild switch

pull:
	git pull

gc:
	nix-env --delete-generations 14d

# end
