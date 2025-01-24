.PHONY: build update switch clean push

build:
	nix build .#profile

update:
	home-manager switch --flake .#profile

switch:
	home-manager switch --flake .#profile

clean:
	nix-collect-garbage -d

push:
	./scripts/git-push.sh
