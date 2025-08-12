# modules/users.nix

{ config, pkgs, ... }:

{
  users.users.labm = {
    isNormalUser = true;
    description = "labm";
    extraGroups = [ "networkmanager" "wheel" "docker" ];
    packages = with pkgs; [
      # Adicione pacotes específicos do usuário aqui, se necessário
    ];
  };
}
