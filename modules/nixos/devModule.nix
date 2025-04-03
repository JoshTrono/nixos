{pkgs,lib,config,...}: {
    options = {
        devModule.enable = 
            lib.mkEnableOption "enables dev module";
    };
    config = lib.mkIf config.devModule.enable {

        environment.systemPackages = with pkgs; [
    jetbrains.rider
    jetbrains.goland
    jetbrains.rust-rover
    #dotnet-sdk_8
    #dotnetCorePackages.dotnet_8.sdk
    cargo
    vscode
    nodejs_18
    podman
    aws-sam-cli
    rustc
    gh
    glab
    direnv
    unstable.devenv

    #unstable.jetbrains.pycharm-professional
    python312Packages.python
    vscode
    tree
    cosign
    #vscode-extensions.esbenp.prettier-vscode
        ];
        # environment.variables = {
        #     DOTNET_ROOT= lib.mkForce "~/.dotnet/";
        # };

    environment.sessionVariables = rec {
DOTNET_SYSTEM_GLOBALIZATION_INVARIANT = "true";
  };
    };

}