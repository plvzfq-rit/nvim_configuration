# 🌹 James's Neovim Config

A personal Neovim configuration built for a clean, minimal aesthetic with a powerful development workflow. Uses **lazy.nvim** for plugin management and the **Rose Pine** colorscheme with a transparent background.

---

## 📋 Prerequisites

- [Neovim](https://neovim.io/) >= 0.9.0
- [Git](https://git-scm.com/)
- A [Nerd Font](https://www.nerdfonts.com/) (recommended for icons)
- `ripgrep` — required for Telescope live grep (`brew install ripgrep` / `apt install ripgrep`)

---

## 🚀 Installation

1. **Back up your existing config** (if any):
   ```bash
   mv ~/.config/nvim ~/.config/nvim.bak
   ```

2. **Clone this repo** into your Neovim config directory:
   ```bash
   git clone https://github.com/your-username/your-repo.git ~/.config/nvim
   ```

3. **Open Neovim** — lazy.nvim will automatically install all plugins on first launch:
   ```bash
   nvim
   ```

---

## 🔌 Plugins

| Plugin | Purpose |
|---|---|
| [lazy.nvim](https://github.com/folke/lazy.nvim) | Plugin manager |
| [rose-pine](https://github.com/rose-pine/neovim) | Colorscheme |
| [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) | Fuzzy finder & file search |
| [harpoon](https://github.com/ThePrimeagen/harpoon) | Fast file navigation |
| [undotree](https://github.com/mbbill/undotree) | Visual undo history |
| [vim-fugitive](https://github.com/tpope/vim-fugitive) | Git integration |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Syntax highlighting & parsing |

---

## ⌨️ Key Mappings

> Leader key is defined in `james/remap.lua`

### 🔭 Telescope
| Keymap | Action |
|---|---|
| `<leader>ff` | Find files |
| `<leader>fg` | Live grep |
| `<leader>fi` | Git files |
| `<leader>fp` | Grep string (with prompt) |

### 🪝 Harpoon
| Keymap | Action |
|---|---|
| `<leader>a` | Add file to Harpoon list |
| `<C-e>` | Toggle Harpoon quick menu |
| `<C-h>` | Jump to file 1 |
| `<C-j>` | Jump to file 2 |
| `<C-k>` | Jump to file 3 |
| `<C-l>` | Jump to file 4 |

### 🌳 Misc
| Keymap | Action |
|---|---|
| `<leader>u` | Toggle Undotree |
| `<leader>gs` | Open Git (Fugitive) |

---

## 🌐 Treesitter Languages

Syntax highlighting is enabled for:

`javascript` · `typescript` · `c` · `cpp` · `html` · `java` · `json` · `python` · `lua` · `angular` · `vue` · `svelte`

---

## 📁 File Structure

```
~/.config/nvim/
├── init.lua           # Entry point
├── james/
│   └── remap.lua      # Key remappings
└── lua/
    └── config/
        └── lazy.lua   # Plugin definitions (lazy.nvim)
```

---

## ✨ Appearance

- **Colorscheme:** [Rose Pine](https://rosepinetheme.com/)
- **Background:** Transparent (Normal + NormalFloat)
- **Line numbers:** Relative + absolute
