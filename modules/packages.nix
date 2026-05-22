{ pkgs, ... }:
{
  home.packages = with pkgs; [
    less
    openssh
    typescript
    typescript-language-server
    gopls
    delve
    gotools
    zoxide
  ];
}
