{unstable, pkgs, config, lib,...}:
{
  services.xserver.enable = true;
  services.displayManager.sddm.enable = true;
  services.desktopManager.plasma6.enable = true;
#   hardware.pulseaudio.enable = true;
  
  services.displayManager.sddm.wayland.enable = true;
  services.displayManager.defaultSession = "plasma";
  networking.networkmanager.enable = true;
   environment.systemPackages = with pkgs; [
      pkgs.unstable.dracula-qt5-theme


   ];


  hardware = {
      bluetooth = {
          enable = true;
          # Needed this to properly display battery 
          # percentage for my cheap bluetooth earbuds
          settings.General.Experimental = true;
      };
};

}
