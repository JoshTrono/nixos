{pkgs,lib,config,...}: {

      services.open-webui.enable = true;
      services.ollama.enable = true;
      virtualisation.virtualbox.host.enable = true;
      virtualisation.virtualbox.guest.enable = true;
      virtualisation.virtualbox.host.enableExtensionPack = true;
}