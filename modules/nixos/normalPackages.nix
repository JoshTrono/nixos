{pkgs,lib,config, inputs,...}: {
    options = {
        normalPackages.enable =
            lib.mkEnableOption "enable normal";
    } ;
    config = lib.mkIf config.normalPackages.enable {
        environment.systemPackages = with pkgs; [
            discord
            firefox
            obsidian
            clamtk
            git
            brave
            google-chrome
            #chromium
            jetbrains-mono
            fastfetch
            thunderbird
            firewalld
            #unstable.vivaldi
        ];
        
          programs.nh = {
    enable = true;
    clean.enable = true;
    clean.extraArgs = "--keep-since 4d --keep 3";
    flake = "/home/joshua/nixos";
  };
  programs.nix-ld.enable = true;
    services = {
        power-profiles-daemon.enable = true;
        upower.enable = true;
        flatpak.enable = true;
        clamav = {
            daemon.enable = true;
            updater.enable = true;
        };
    };

    };


}