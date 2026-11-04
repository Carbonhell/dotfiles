{ config, ... }:

{
  imports = [
    ./programs/fish.nix
    ./programs/starship.nix
    ./programs/git.nix
    ./programs/zoxide.nix
    ./programs/fzf.nix
    ./programs/direnv.nix
    ./packages.nix
  ];

  home.username = "carbonic";
  home.homeDirectory = "/home/carbonic";

  home.stateVersion = "26.05";

  home.sessionVariables = {
    SSH_AUTH_SOCK = "${config.home.homeDirectory}/.bitwarden-ssh-agent.sock";
    EDITOR = "hx";
    VISUAL = "hx";
  };
  
  programs.home-manager.enable = true;
}
