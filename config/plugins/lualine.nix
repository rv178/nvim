{ lib, ... }:
let
  colors = {
    /*nixfmt:disable*/
    nord1 = "#3B4252"; nord3 = "#4C566A";
    nord5 = "#E5E9F0"; nord6 = "#ECEFF4";
    nord7 = "#8FBCBB"; nord9 = "#81a1c1";
    nord13 = "#EBCB8B";
    /*nixfmt:enable*/
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
            /*nixfmt:disable*/
            normal = {
              a = { fg = colors.nord1; bg = colors.nord9; };
              b = { fg = colors.nord5; bg = colors.nord1; };
              c = { fg = colors.nord5; bg = colors.nord3; };
            };
            insert.a = { fg = colors.nord1; bg = colors.nord6; gui = "bold"; };
            visual.a = { fg = colors.nord1; bg = colors.nord7; gui = "bold"; };
            replace.a = { fg = colors.nord1; bg = colors.nord13; gui = "bold"; };
            inactive = {
              a = { fg = colors.nord5; bg = colors.nord1; };
              b = { fg = colors.nord5; bg = colors.nord1; };
              c = { fg = colors.nord5; bg = colors.nord1; };
            };
            /*nixfmt:enable*/
          };
          disabled_filetypes = {
            statusline = [ ];
            tabline = [ ];
            winbar = [ ];
          };
        };
        sections = {
          lualine_a = [ "mode" ];
          lualine_b = [
            {
              "@1" = "branch";
              icon = " •";
            }
            "diff"
            {
              "@1" = "diagnostics";
              symbols = {
                error = "󰅙  ";
                warn = "  ";
                info = "  ";
                hint = "󰌵 ";
              };
            }
          ];
          lualine_c = [
            {
              "@1" = "filename";
              symbols = {
                modified = " ";
                readonly = " ";
              };
            }
          ];
          lualine_x = [
            {
              "@1" = lib.generators.mkLuaInline ''
                function()
                  local buf_ft = vim.bo.filetype
                  local excluded_buf_ft = { toggleterm = true, NvimTree = true, ["neo-tree"] = true, TelescopePrompt = true }

                  if excluded_buf_ft[buf_ft] then
                    return ""
                    end

                  local bufnr = vim.api.nvim_get_current_buf()
                  local clients = vim.lsp.get_clients({ bufnr = bufnr })

                  if vim.tbl_isempty(clients) then
                    return "No Active LSP"
                  end

                  local active_clients = {}
                  for _, client in ipairs(clients) do
                    table.insert(active_clients, client.name)
                  end

                  return table.concat(active_clients, ", ")
                end
              '';
              icon = " ";
            }
          ];
          lualine_y = [
            "fileformat"
            "filetype"
          ];
          lualine_z = [ "progress" ];
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
              symbols = {
                modified = " ●";
                alternate_file = "";
                directory = "󰉋 ";
              };
              icons_enabled = false;
              show_modified_status = true;
              component_separators = {
                left = "•";
                right = "•";
              };
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
