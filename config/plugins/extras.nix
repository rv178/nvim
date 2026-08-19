{
  lib,
  pkgs,
  txm-nvim,
  isMaximal,
  ...
}:
{
  config = lib.mkIf isMaximal {
    vim.lazy.plugins = {
      # latex preview
      "txm.nvim" = {
        package = pkgs.vimUtils.buildVimPlugin {
          pname = "txm.nvim";
          version = txm-nvim.shortRev or "unstable";
          src = txm-nvim;
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
