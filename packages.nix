{ pkgs, unstable, ... }:

{
  home.packages = with pkgs; [
    helix
    btop
    unstable.bitwarden-desktop
    presenterm
    jujutsu
    unstable.codex
    # Packages I'm just playing around with
    zellij
  ];
}
