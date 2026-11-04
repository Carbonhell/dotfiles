{ ... }:

{
  programs.fish = {
    enable = true;

    shellInit = ''
      if test -f /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.fish
        source /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.fish
      end
    '';

    interactiveShellInit = ''
      set -g fish_greeting
    '';

    shellAliases = {
      ll = "ls -lah";
      gs = "git status";
      homerl = "home-manager switch --flake .#desktop";
    };
  };
}
