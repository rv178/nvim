{ isMaximal, ... }:
{
  config.vim = {
    lsp = {
      enable = true;
      formatOnSave = true;
    };

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
        extensions.markview-nvim.enable = isMaximal;
      };
      clang.enable = isMaximal;
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
