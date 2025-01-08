{pkgs, config, lib,...}:
{
  services.xserver = {
  enable = true;
  displayManager.gdm.enable = true;
  desktopManager.gnome.enable = true;
};
  environment.systemPackages = with pkgs; [
    gnomeExtensions.blur-my-shell
    gnomeExtensions.gsconnect
    gnome-extension-manager
    dconf-editor
    gnome-tweaks
];
}