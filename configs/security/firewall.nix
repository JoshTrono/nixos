{...}: 
{
    networking.firewall = {
      enable = false;
      #AllowedTCPPorts = [ 80 443 ];
    };
}