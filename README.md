# nvim dots

[nvf](https://github.com/NotAShelf/nvf) based neovim config. (Mostly) intended for personal use.

## Run

Load all languages and some optional plugins:

```bash
nix run .#maximal
```

For the minimal config:

```bash
nix run .#minimal
```


<details>
<summary>Enabled languages</summary>

- Bash*
- Nix*
- Markdown**
- Clang (C/C++)
- Lua
- Go
- Rust
- OCaml
- TypeScript
- Zig
- Python
- Typst

*Runs without `maximal` enabled.

**Only treesitter, no LSP (without `maximal`).

</details>

<details>
<summary>Plugins</summary>

Always enabled:

| Name | Function |
| --- | --- |
| [nord.nvim](https://github.com/gbprod/nord.nvim) | Colorscheme |
| [mini.nvim](https://github.com/echasnovski/mini.nvim) | Cmdline, completion, files, notify, snippets, and surround |
| [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) | Fuzzy finding |
| [alpha-nvim](https://github.com/goolord/alpha-nvim) | Dashboard |
| [friendly-snippets](https://github.com/rafamadriz/friendly-snippets) | Snippet collection |
| [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) | Git signs |
| [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim) | Indent guides |
| [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) | Statusline and tabline |
| [nvim-autopairs](https://github.com/windwp/nvim-autopairs) | Automatic bracket pairs |
| [nvim-colorizer.lua](https://github.com/NvChad/nvim-colorizer.lua) | Colour highlighting |
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | Language server configuration |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Syntax parsing and highlighting |

Enabled only when `maximal`:

| Name | Function |
| --- | --- |
| [cord.nvim](https://github.com/vyfor/cord.nvim) | Discord presence |
| [markview.nvim](https://github.com/OXY2DEV/markview.nvim) | Markdown preview |
| [typst-preview.nvim](https://github.com/chomosuke/typst-preview.nvim) | Typst preview |
| [txm.nvim](https://github.com/rv178/txm.nvim) | LaTeX preview |

</details>

<details> 
<summary>Keybinds</summary>


| Mode | Keybind | Action |
| --- | --- | --- |
| Normal | `<leader>]` | Jump to next buffer |
| Normal | `<leader>[` | Jump to previous buffer |
| Normal | `<leader>f` | Format Local buffer |
| Visual | `<leader>tx` | TXM preview |
| Normal | `<leader>tt` | TXM toggle |
| Normal | `<leader>u` | Toggle built-in undotree |
| Normal | `<leader>re` | Restart config `:restart` |
| Normal | `<C-s>` | Save buffer |
| Normal | `<C-p>` | Telescope find files |
| Normal | `<C-g>` | Telescope live grep |
| Normal | `gd` | Go to definition |
| Normal | `df` | Show line diagnostics |
| Normal | `cc` | Comment line |
| Visual | `cc` | Comment selection |
| Visual | `J` | Move lines down in visual selection |
| Visual | `K` | Move lines up in visual selection |
| Visual | `>` | Indent and keep selection |
| Visual | `<` | Unindent and keep selection |
| Normal | `Y` | Yank to end of line |
| Visual | `Y` | Yank selection to system clipboard |
| Normal | `n` | Next search result cursor centered |
| Normal | `N` | Previous search result cursor centered |
| Normal | `-` | Toggle mini file explorer |
| Normal | `Q` | Disable Q |
| Normal | `<Esc>` | Clear search highlighting |

</details>
