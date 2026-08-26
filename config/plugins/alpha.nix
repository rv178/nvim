{ lib, ... }:
{
  config.vim = {
    additionalRuntimePaths = [ ../.. ];

    dashboard.alpha = {
      enable = true;
      theme = null;
      layout = [
        {
          type = "padding";
          val = 2;
        }
        {
          type = "text";
          val = lib.generators.mkLuaInline ''require("rv.header").val'';
          opts = {
            position = "center";
            hl = lib.generators.mkLuaInline ''require("rv.header").opts.hl'';
          };
        }
        {
          type = "padding";
          val = 2;
        }
        {
          type = "group";
          val = [
            (lib.generators.mkLuaInline ''require("alpha.themes.dashboard").button("f", "  " .. "Find file", "<cmd>Telescope find_files<CR>")'')
            (lib.generators.mkLuaInline ''require("alpha.themes.dashboard").button("g", "  " .. "Live grep", "<cmd>Telescope live_grep<CR>")'')
            (lib.generators.mkLuaInline ''require("alpha.themes.dashboard").button("r", "  " .. "Recent files", "<cmd>Telescope oldfiles<CR>")'')
            (lib.generators.mkLuaInline ''require("alpha.themes.dashboard").button("e", "  " .. "New file", "<cmd>ene<CR>")'')
            (lib.generators.mkLuaInline ''require("alpha.themes.dashboard").button("q", "  " .. "Quit", "<cmd>qa<CR>")'')
          ];
          opts.spacing = 1;
        }
        {
          type = "padding";
          val = 1;
        }
      ];
      opts.margin = 5;
    };

    autocmds = [
      {
        event = [ "User" ];
        pattern = [ "AlphaReady" ];
        desc = "Hide cursor for alpha";
        callback = lib.generators.mkLuaInline ''
          function()
            local hl = vim.api.nvim_get_hl_by_name("Cursor", true)
            local original_blend = hl.blend
            local original_guicursor = vim.o.guicursor

            local function hide_cursor()
              hl.blend = 100
              vim.api.nvim_set_hl(0, "Cursor", hl)
              vim.o.guicursor = original_guicursor
              vim.opt.guicursor:append("a:Cursor/lCursor")
            end

            local function restore_cursor()
              hl.blend = original_blend
              vim.api.nvim_set_hl(0, "Cursor", hl)
              vim.o.guicursor = original_guicursor
            end

            hide_cursor()

            vim.api.nvim_create_autocmd("BufLeave", {
              buffer = 0,
              callback = restore_cursor,
              desc = "Show cursor outside alpha",
            })

            vim.api.nvim_create_autocmd("BufEnter", {
              buffer = 0,
              callback = hide_cursor,
              desc = "Hide cursor inside alpha",
            })
          end
        '';
      }
    ];
  };
}
