##
all:
	# gc            garbage collect
	# rebuild       rebuild system

rebuild:
	nixos-rebuild switch

gc:
	nix-env --delete-generations 14d

# end
