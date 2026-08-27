{ lib, isMaximal, ... }:
{
  config.vim = {
    lsp = {
      enable = true;
      formatOnSave = true;

      servers.clangd.cmd = lib.mkForce [ "clangd" ];
    };

    treesitter.indent.enable = false;

    languages = {
      enableTreesitter = true;

      bash.enable = true;
      nix = {
        enable = true;
        lsp.servers = [ "nil" ];
      };
      markdown = {
        enable = true;
        lsp.enable = isMaximal;
      };
      clang = {
        enable = true;
        lsp = {
          enable = true;
          servers = [ "clangd" ];
        };
      };
      lua.enable = isMaximal;
      go.enable = isMaximal;
      rust.enable = isMaximal;
      ocaml.enable = isMaximal;
      typescript.enable = isMaximal;
      zig.enable = isMaximal;
      python.enable = isMaximal;
      typst = {
        enable = isMaximal;
        extensions.typst-preview-nvim.enable = isMaximal;
      };
    };
  };
}
