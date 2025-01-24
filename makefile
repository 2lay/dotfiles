
.PHONY: build
build:
	nix build .#profile
.PHONY: update
update:
	home-manager switch --flake .#profile
.PHONY: switch
switch:
	home-manager switch --flake .#profile

.PHONY: clean
clean:
	nix-collect-garbage -d
