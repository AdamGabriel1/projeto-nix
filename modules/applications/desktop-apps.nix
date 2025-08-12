# modules/applications/desktop-apps.nix

{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    pkgs.vscode
  ];

  programs.firefox.enable = true;
}
