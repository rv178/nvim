{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    nvf = {
      url = "github:notashelf/nvf";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    txm-nvim = {
      url = "github:rv178/txm.nvim";
      flake = false;
    };
  };

  outputs =
    { nixpkgs, ... }@inputs:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};

      mkNeovim =
        isMaximal:
        (inputs.nvf.lib.neovimConfiguration {
          inherit pkgs;
          modules = [ ./config ];

          extraSpecialArgs = {
            inherit isMaximal;
            inherit (inputs) txm-nvim;
          };
        }).neovim;
    in
    {
      packages.${system} = rec {
        minimal = mkNeovim false;
        maximal = mkNeovim true;
        default = maximal;
      };
    };
}
