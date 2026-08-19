{ lib, ... }:
{
  config.vim = {
    ui.ui2.enable = true;

    viAlias = false;
    vimAlias = false;

    theme = {
      enable = true;
      name = "nord";
      transparent = true;
    };

    lineNumberMode = "relNumber";
    searchCase = "smart";
    undoFile = {
      enable = true;
      path = lib.generators.mkLuaInline ''vim.fn.stdpath("data") .. "/undodir"'';
    };

    options = {
      termguicolors = true;
      title = true;
      scrolloff = 999;
      colorcolumn = "150";
      signcolumn = "yes";

      # indentation
      tabstop = 4;
      softtabstop = 4;
      shiftwidth = 4;
      expandtab = true;
      smartindent = true;

      wrap = false;
      inccommand = "split";
      updatetime = 300;
      mouse = "a";
      swapfile = false;

      splitbelow = true;
      splitright = true;

      completeopt = "menuone,noselect,fuzzy,nosort";
    };

    luaConfigRC.optionAppends = lib.nvim.dag.entryAfter [ "optionsScript" ] ''
      vim.opt.isfname:append("@-@")
      vim.opt.shortmess:append("c")
    '';

    autocmds = [
      {
        event = [ "TextYankPost" ];
        desc = "Highlight yanked text";
        callback = lib.generators.mkLuaInline ''
          function()
            vim.hl.on_yank()
          end
        '';
      }
    ];
  };
}
