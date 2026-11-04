{ ... }:

{
  programs.starship = {
    enable = true;
    enableFishIntegration = true;

    settings = {
      add_newline = true;

      format = "$directory$git_branch$git_status$python$rust$aws$kubernetes$line_break$character";

      directory.truncation_length = 3;

      git_branch.symbol = " ";

      python = {
        symbol = " ";
        format = "via [${"$symbol"}${"$version"}]($style) ";
      };

      rust = {
        symbol = " ";
        format = "via [${"$symbol"}${"$version"}]($style) ";
      };

      aws = {
        format = "on [☁ $profile]($style) ";
      };

      kubernetes = {
        disabled = false;
        format = "on [⎈ $context]($style) ";
      };

      character = {
        success_symbol = "[❯](bold green)";
        error_symbol = "[❯](bold red)";
      };
    };
  };
}
