{ ... }:
{
  programs.git = {
    enable = true;
    settings = {
      init.defaultBranch = "master";
      core.editor = "hx";
      user = {
        name = "Mirza Faris Al Arifin";
        email = "alarifinmirzafaris@gmail.com";
      };
    };
  };
}
