{
  lib,
  pkgs,
  isMaximal,
  ...
}:
{
  config = lib.mkIf isMaximal {
    vim.lazy.plugins = {
      # latex preview
      "txm.nvim" = {
        package =
          let
            rev = "6729cea25ec6febfc12823f2fa30a5567b67d785";
          in
          pkgs.vimUtils.buildVimPlugin {
            pname = "txm.nvim";
            version = "unstable-${builtins.substring 0 7 rev}";
            src = pkgs.fetchFromGitHub {
              owner = "rv178";
              repo = "txm.nvim";
              inherit rev;
              hash = "sha256-3wwRJN4jlkha61GstTgHxKQivdrgc5Q/NnvqG7UwqC4=";
            };
          };
        cmd = [ "TxmToggle" ];
        keys = [
          {
            mode = "v";
            key = "<leader>tx";
            action = "<Plug>(TxmPreview)";
            noremap = false;
            desc = "Open TXM preview popup after visual selection";
          }
          {
            mode = "n";
            key = "<leader>tt";
            action = "<cmd>TxmToggle<CR>";
            desc = "Toggle TXM preview";
          }
        ];
      };
    };
  };
}
