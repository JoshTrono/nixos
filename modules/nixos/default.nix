# Add your reusable NixOS modules to this directory, on their own file (https://nixos.wiki/wiki/Module).
# These should be stuff you would like to share with others, not your personal configurations.
{
  # List your module files here
  # my-module = import ./my-module.nix;
  
  #------Games---
  gameModule = import ./gameModule.nix;
  #------Dev-----
  devModule = import ./devModule.nix;
  #--- Common Packages
  normalPackages = import ./normalPackages.nix;

  virtualization = import ./virtualization.nix;
}

