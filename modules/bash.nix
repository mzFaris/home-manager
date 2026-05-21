{ ... }:
{
  programs.bash = {
    enable = true;
    bashrcExtra = ''
      export PROMPT_DIRTRIM=1  
    '';
  };
}
