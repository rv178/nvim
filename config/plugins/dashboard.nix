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
            (lib.generators.mkLuaInline ''require("alpha.themes.dashboard").button("f", "Find file", "<cmd>Telescope find_files<CR>")'')
            (lib.generators.mkLuaInline ''require("alpha.themes.dashboard").button("g", "Live grep", "<cmd>Telescope live_grep<CR>")'')
            (lib.generators.mkLuaInline ''require("alpha.themes.dashboard").button("r", "Recent files", "<cmd>Telescope oldfiles<CR>")'')
            (lib.generators.mkLuaInline ''require("alpha.themes.dashboard").button("e", "New file", "<cmd>ene<CR>")'')
            (lib.generators.mkLuaInline ''require("alpha.themes.dashboard").button("q", "Quit", "<cmd>qa<CR>")'')
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
  };
}
