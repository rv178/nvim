{
  lib,
  pkgs,
  isMaximal,
  ...
}:
{
  config = lib.mkIf isMaximal {
    vim.lazy.plugins = {
      # markdown/html live preview
      "live-preview.nvim" = {
        package =
          let
            rev = "a6307fa340ed7c0d96f5c567afc8c991aad94ce0";
          in
          pkgs.vimUtils.buildVimPlugin {
            pname = "live-preview.nvim";
            version = "unstable-${builtins.substring 0 7 rev}";
            src = pkgs.fetchFromGitHub {
              owner = "brianhuster";
              repo = "live-preview.nvim";
              inherit rev;
              hash = "sha256-xyeoz4lEqrinkqY5U4Fu1S2HlmCyXiNQ2l2+AJFozIc=";
            };
          };
        cmd = [ "LivePreview" ];
        keys = [
          {
            mode = "n";
            key = "<leader>po";
            action = "<cmd>LivePreview start<CR>";
            desc = "Start live preview";
          }
          {
            mode = "n";
            key = "<leader>pc";
            action = "<cmd>LivePreview close<CR>";
            desc = "Close live preview";
          }
          {
            mode = "n";
            key = "<leader>pp";
            action = "<cmd>LivePreview pick<CR>";
            desc = "Close live preview";
          }
        ];
      };
    };
  };
}
