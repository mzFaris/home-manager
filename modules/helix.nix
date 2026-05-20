{ lib, pkgs, ... }:
{
  programs.helix = {
    enable = true;
    settings = {
      theme = "catppuccin_mocha";
      editor = {
        line-number = "relative";
        cursor-shape = {
          insert = "bar";
        };
      };
    };
    languages = {
      language-server = {
        phpactor = {
          command = "phpactor";
          args = [ "language-server" ];
        };
      };
      language = [
        {
          name = "javascript";
          language-servers = [
            "typescript-language-server"
          ];
          formatter = {
            command = "deno";
            args = [
              "fmt"
              "-"
              "--ext"
              "js"
            ];
          };
          auto-format = true;
        }
        {
          name = "jsx";
          language-servers = [
            "typescript-language-server"
          ];
          formatter = {
            command = "deno";
            args = [
              "fmt"
              "-"
              "--ext"
              "jsx"
            ];
          };
          auto-format = true;
        }
        {
          name = "typescript";
          language-servers = [
            "typescript-language-server"
          ];
          formatter = {
            command = "deno";
            args = [
              "fmt"
              "-"
              "--ext"
              "ts"
            ];
          };
          auto-format = true;
        }
        {
          name = "tsx";
          language-servers = [
            "typescript-language-server"
          ];
          formatter = {
            command = "deno";
            args = [
              "fmt"
              "-"
              "--ext"
              "tsx"
            ];
          };
          auto-format = true;
        }
        {
          name = "php";
          language-servers = [ "phpactor" ];
        }
        {
          name = "nix";
          auto-format = true;
          formatter.command = lib.getExe pkgs.nixfmt-rfc-style;
        }
        {
          name = "go";
          auto-format = true;
          formatter = {
            command = "goimports";
          };
        }
      ];
    };
  };

}
