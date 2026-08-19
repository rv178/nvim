{ ... }:
let
  colors = {
    nord1 = "#3B4252";
    nord3 = "#4C566A";
    nord5 = "#E5E9F0";
    nord6 = "#ECEFF4";
    nord7 = "#8FBCBB";
    nord9 = "#81a1c1";
    nord13 = "#EBCB8B";
  };
in
{
  config.vim = {
    statusline.lualine = {
      enable = true;
      setupOpts = {
        options = {
          icons_enabled = true;
          theme = {
            normal = {
              a = {
                fg = colors.nord1;
                bg = colors.nord9;
              };
              b = {
                fg = colors.nord5;
                bg = colors.nord1;
              };
              c = {
                fg = colors.nord5;
                bg = colors.nord3;
              };
            };
            insert.a = {
              fg = colors.nord1;
              bg = colors.nord6;
              gui = "bold";
            };
            visual.a = {
              fg = colors.nord1;
              bg = colors.nord7;
              gui = "bold";
            };
            replace.a = {
              fg = colors.nord1;
              bg = colors.nord13;
              gui = "bold";
            };
            inactive = {
              a = {
                fg = colors.nord5;
                bg = colors.nord1;
              };
              b = {
                fg = colors.nord5;
                bg = colors.nord1;
              };
              c = {
                fg = colors.nord5;
                bg = colors.nord1;
              };
            };
          };
          component_separators = {
            left = "";
            right = "";
          };
          section_separators = {
            left = "";
            right = "";
          };
          disabled_filetypes = {
            statusline = [ ];
            tabline = [ ];
            winbar = [ ];
          };
          ignore_focus = [ ];
          always_divide_middle = true;
          globalstatus = true;
          refresh = {
            statusline = 1000;
            tabline = 1000;
            winbar = 1000;
          };
        };
        sections = {
          lualine_a = [ "mode" ];
          lualine_b = [
            "branch"
            "diff"
            "diagnostics"
          ];
          lualine_c = [ "filename" ];
          lualine_x = [
            "encoding"
            "lsp"
            "fileformat"
            {
              "@1" = "filetype";
              icons_enabled = false;
            }
          ];
          lualine_y = [ "progress" ];
          lualine_z = [ "location" ];
        };
        inactive_sections = {
          lualine_a = [ ];
          lualine_b = [ ];
          lualine_c = [ "filename" ];
          lualine_x = [ "location" ];
          lualine_y = [ ];
          lualine_z = [ ];
        };
        tabline = {
          lualine_a = [
            {
              "@1" = "buffers";
              icons_enabled = false;
            }
          ];
          lualine_b = [ ];
          lualine_c = [ ];
          lualine_x = [ ];
          lualine_y = [ ];
          lualine_z = [ "tabs" ];
        };
        winbar = { };
        inactive_winbar = { };
        extensions = [ ];
      };
    };
  };
}
