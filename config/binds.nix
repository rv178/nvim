{ ... }: {
  config.vim = {
    globals.mapleader = " ";

    keymaps = [
      # leader
      {
        mode = "n";
        key = "<leader>]";
        action = "<cmd>bnext<CR>";
        desc = "Jump to next buffer";
      }
      {
        mode = "n";
        key = "<leader>[";
        action = "<cmd>bprev<CR>";
        desc = "Jump to previous buffer";
      }

      # lsp
      {
        mode = "n";
        key = "gd";
        lua = true;
        action = "vim.lsp.buf.definition";
        desc = "Go to definition";
      }
      {
        mode = "n";
        key = "<leader>f";
        lua = true;
        action = "vim.lsp.buf.format";
        desc = "Format Local buffer";
      }
      {
        mode = "n";
        key = "df";
        lua = true;
        action = "vim.diagnostic.open_float";
        desc = "Show line diagnostics";
      }

      # control
      {
        mode = "n";
        key = "<C-s>";
        action = "<cmd>w<CR>";
        desc = "Save buffer";
      }

      # built - in commenting(gc / gcc)
      {
        mode = "n";
        key = "cc";
        action = "gcc";
        noremap = false;
        desc = "Comment line";
      }
      {
        mode = "x";
        key = "cc";
        action = "gc";
        noremap = false;
        desc = "Comment selection";
      }

      # selection
      {
        mode = "v";
        key = "J";
        action = ":m '>+1<CR>gv";
        desc = "Move lines down in visual selection";
      }
      {
        mode = "v";
        key = "K";
        action = ":m '<-2<CR>gv";
        desc = "Move lines up in visual selection";
      }
      {
        mode = "v";
        key = ">";
        action = ">gv";
        desc = "Indent and keep selection";
      }
      {
        mode = "v";
        key = "<";
        action = "<gv";
        desc = "Unindent and keep selection";
      }
      {
        mode = "n";
        key = "Y";
        action = "y$";
      }
      {
        mode = "v";
        key = "Y";
        action = "\"+y";
      }

      # movement
      {
        mode = "n";
        key = "n";
        action = "nzzzv";
        desc = "Next search result cursor centered";
      }
      {
        mode = "n";
        key = "N";
        action = "Nzzzv";
        desc = "Previous search result cursor centered";
      }

      # undotree
      {
        mode = "n";
        key = "<leader>u";
        lua = true;
        action = ''
          function()
          vim.cmd.packadd("nvim.undotree") require("undotree")
          .open() end
        '';
        desc = "Toggle built-in undotree";
      }

      # minifiles
      {
        mode = "n";
        key = "-";
        action = "<cmd>lua MiniFiles.open()<CR>";
        desc = "Toggle mini file explorer";
      }

      #  others
      {
        mode = "n";
        key = "Q";
        action = "<Nop>";
      }
      {
        mode = "n";
        key = "<Esc>";
        action = "<cmd>noh<CR>";
      }
      {
        mode = "n";
        key = "<leader>re";
        action = "<cmd>restart<CR>";
        desc = "Restart config :restart";
      }

      # live-preview.nvim
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
}
