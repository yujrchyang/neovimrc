# My Neovim Configuration

A modern, performant Neovim config for C/C++, Shell, Python, Go, and Rust.

## Features

- LSP: clangd, bashls, pyright, gopls, rust-analyzer
- Linters: shellcheck, ruff
- Fuzzy finder: Telescope (files, live grep)
- Snippets: LuaSnip + friendly-snippets
- Syntax highlighting: Treesitter
- Auto pairs, smart indent
- Theme: onedark.nvim

## Install

```bash
git clone git@github.com:yujrchyang/neovimrc.git $HOME/.config/nvim
cd $HOME/.config/nvim
./install.sh
nvim  # plugins auto-install
```

## 快捷键

### LSP / 代码

| 快捷键 | 功能 |
| --- | --- |
| `gd` | 跳转到定义 |
| `gr` | 查找引用 |
| `K` | 显示悬停提示 |
| `<leader>rn` | 重命名 |
| `<leader>ca` | 代码操作 |
| `<leader>f` | 格式化代码 |

### 搜索 (Telescope)

| 快捷键 | 功能 |
| --- | --- |
| `<leader>ff` | 查找文件 |
| `<leader>fg` | 关键字搜索 |
| `<leader>fb` | 搜索缓冲区 |
| `<leader>fs` | 当前文件符号 |
| `<leader>fws` | 工作区符号 |

### 文件 / 窗口

| 快捷键 | 功能 |
| --- | --- |
| `<leader>e` | 开关文件树 |
| `<leader>a` | 开关代码大纲 |
| `<C-h>` | 切换到左窗口 |
| `<C-j>` | 切换到下窗口 |
| `<C-k>` | 切换到上窗口 |
| `<C-l>` | 切换到右窗口 |
| `Tab` | 下一个文件 |
| `S-Tab` | 上一个文件 |
| `<leader>bo` | 关闭其他文件 |
| `<leader>br` | 关闭右侧文件 |
| `<leader>bl` | 关闭左侧文件 |
| `<leader>bd` | 关闭当前文件 |

### 终端

| 快捷键 | 功能 |
| --- | --- |
| `<C-\>` | 开关终端 |
| `<C-q>` | 退出终端模式 |

### 错误诊断

| 快捷键 | 功能 |
| --- | --- |
| `[d` | 上一个错误 |
| `]d` | 下一个错误 |
| `<leader>lm` | Markdown lint |

### Vim 内置常用

| 快捷键 | 功能 |
| --- | --- |
| `:w` | 保存 |
| `:q` | 退出 |
| `ZZ` | 保存并退出 |
| `u` | 撤销 |
| `Ctrl+r` | 重做 |
| `/` | 搜索 |
| `n` | 下一个搜索结果 |
| `N` | 上一个搜索结果 |
| `gg` | 文件开头 |
| `G` | 文件结尾 |
| `dd` | 删除整行 |
| `yy` | 复制整行 |
| `p` | 粘贴 |
