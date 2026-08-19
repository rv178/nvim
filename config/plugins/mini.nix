{ lib, pkgs, ... }:
{
  config.vim = {
    mini = {
      files = {
        enable = true;
        setupOpts.mappings = {
          go_in = "<CR>";
          go_in_plus = "L";
          go_out = "_";
          go_out_plus = "H";
        };
      };

      notify = {
        enable = true;
        setupOpts.content.format = lib.generators.mkLuaInline ''
          function(notif)
            return notif.msg
          end
        '';
      };

      cmdline = {
        enable = true;
        setupOpts.autocorrect.enable = false;
      };

      surround.enable = true;

      completion = {
        enable = true;
        setupOpts.lsp_completion.auto_setup = true;
      };

      snippets = {
        enable = true;
        setupOpts = {
          snippets = [
            (lib.generators.mkLuaInline ''
              require("mini.snippets").gen_loader.from_lang()
            '')
          ];
          expand.insert = lib.generators.mkLuaInline ''
            function(snippet)
              require("mini.snippets").default_insert(snippet, { empty_tabstop = "" })
            end
          '';
        };
      };
    };

    extraPlugins.friendly-snippets.package = pkgs.vimPlugins.friendly-snippets;

    pluginRC.mini-snippets-lsp = lib.nvim.dag.entryAfter [ "mini-snippets" ] ''
      require("mini.snippets").start_lsp_server({ match = false })
    '';

    autocmds = [
      {
        event = [ "User" ];
        pattern = [ "MiniFilesBufferCreate" ];
        desc = "Map :w to synchronize mini.files";
        callback = lib.generators.mkLuaInline ''
          function(args)
            vim.keymap.set("n", ":w<CR>", require("mini.files").synchronize, {
              buffer = args.data.buf_id,
              desc = "Synchronize mini.files",
            })
          end
        '';
      }
    ];
  };
}
