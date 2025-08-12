# modules/desktop/cinnamon.nix

{ config, pkgs, ... }:

{
  services.xserver = {
    enable = true;
    displayManager.lightdm.enable = true;
    desktopManager.cinnamon.enable = true;
    xkb = {
      layout = "br";
      variant = "";
    };
  };

  # Som e áudio
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };
  
  # Impressão
  services.printing.enable = true;

  # Temas e ícones
  environment.systemPackages = with pkgs; [
    orchis-theme
    papirus-icon-theme
  ];
}
