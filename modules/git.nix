{ ... }:
{
  programs.git = {
    enable = true;
    settings = {
      init.defaultBranch = "master";
      core.editor = "hx";
      push.autoSetupRemote = true;
      user = {
        name = "Mirza Faris Al Arifin";
        email = "alarifinmirzafaris@gmail.com";
      };
    };
  };
}
