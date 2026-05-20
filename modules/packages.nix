{ pkgs, ... }:
{
  home.packages = with pkgs; [
    less
    openssh
    typescript
    typescript-language-server
    deno
    phpactor
    gopls
    delve
    gotools
    golangci-lint-langserver
    golangci-lint
    zoxide
  ];
}
