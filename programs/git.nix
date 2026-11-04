{ ... }:

{
  programs.git = {
    enable = true;

    settings = {
      user = {
        name = "Carbonhell";
        email = "frafonia@gmail.com";
        signingKey = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIE/ZsUZna1jwfW6ezPiLsteQHe3tba2rygGtEh52rOFC"; 
      };

      gpg = {
        format = "ssh";
      };

      commit.gpgSign = true;
      tag.gpgSign = true;

      init.defaultBranch = "main";
      pull.rebase = true;
      push.autoSetupRemote = true;
    };
  };
}
