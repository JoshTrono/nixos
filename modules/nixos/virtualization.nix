{pkgs,lib,config,...}: {

      services.open-webui.enable = true;
      services.ollama.enable = true;
programs.virt-manager.enable = true;

users.groups.libvirtd.members = ["joshua"];

virtualisation.libvirtd.enable = true;

virtualisation.spiceUSBRedirection.enable = true;
}