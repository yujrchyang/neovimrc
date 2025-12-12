#!/bin/bash
set -e

echo "Setting up Neovim config..."

# Install system dependencies (Ubuntu/Debian)
if command -v apt &> /dev/null; then
  echo "Installing system packages..."
  sudo apt update
  sudo apt install -y \
    ripgrep fd-find shellcheck clangd \
    python3-pip golang-go rustc cargo
fi

# Install Python tools
pip3 install --user pyright ruff

# Optional: Install Go LSP (gopls)
go install golang.org/x/tools/gopls@latest 2>/dev/null || true

# Done
echo "Setup complete! Run 'nvim' to start."
echo "First launch will auto-install plugins and LSP servers."
