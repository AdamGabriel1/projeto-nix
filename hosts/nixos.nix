# hosts/nixos.nix

{ config, pkgs, ... }:

{
  imports = [
    # Módulo de hardware, sempre o primeiro
    ./hardware-configuration.nix

    # Módulos do sistema
    ../../modules/system-base.nix
    ../../modules/desktop/cinnamon.nix
    ../../modules/services/containers.nix
    ../../modules/services/networking.nix
    ../../modules/users.nix

    # Módulos de aplicativos
    ../../modules/applications/common.nix
    ../../modules/applications/desktop-apps.nix
  ];

  # Configurações específicas desta máquina
  networking.hostName = "nixos";
  system.stateVersion = "25.05";
}
