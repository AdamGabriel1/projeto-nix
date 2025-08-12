# modules/applications/common.nix

{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    pkgs.gitFull
    pkgs.baobab
    pkgs.gnome-system-monitor
  ];
}
