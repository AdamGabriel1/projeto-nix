{
  description = "Configuração do NixOS para o projeto ADAM";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";
  };

  outputs = inputs@{ self, nixpkgs, ... }: {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        # Importa o arquivo de configuração principal da sua máquina
        ./hosts/nixos.nix
      ];
    };
  };
}
