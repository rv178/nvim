{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    nvf = {
      url = "github:rv178/nvf";
      inputs.nixpkgs.follows = "nixpkgs";
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
