{pkgs,lib,config,...}: {
    options = {
        devModule.enable = 
            lib.mkEnableOption "enables dev module";
    };
    config = lib.mkIf config.devModule.enable {
        environment.systemPackages = with pkgs; [
    unstable.jetbrains.rider
    unstable.jetbrains.goland
    unstable.jetbrains.rust-rover
    unstable.jetbrains.ruby-mine
    unstable.jetbrains.clion
    dotnet-sdk_8
    cargo
    vscode
    nodejs_18
    podman
    aws-sam-cli
    rustc
    gh
    glab
    direnv
    unstable.jetbrains.pycharm-professional
    python312Packages.python
    vscode
    tree
    cosign
    vscode-extensions.esbenp.prettier-vscode
        ];
        
    };

}