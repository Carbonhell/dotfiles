# Dotfiles

This project contains common configurations I use on development machines.

Nix and home-manager are used to keep common tools under version control.
To install the environment, run the following command after cloning this repo:

```sh
nix run github:nix-community/home-manager/release-26.05 \
  -- switch --flake .#desktop
```
  
To apply home.nix changes, run the following command:

```sh
home-manager switch --flake .#desktop
```

The `mac` folder contains dotfiles specific for Apple machines.
