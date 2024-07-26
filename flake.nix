{
  description = "Sinh-x Blog";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = {
    self,
    nixpkgs,
  }: {
    devShell.x86_64-linux = with nixpkgs.legacyPackages.x86_64-linux;
      mkShell {
        buildInputs = [
          nodejs_22
          nodePackages.npm
          fish
        ];

        shellHook = ''
          export NODE_ENV=development
          exec fish
        '';
      };
  };
}
