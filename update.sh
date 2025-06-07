#!/bin/bash

echo "🔄 Syncing local dotfiles to repo..."

# Sync Zsh
cp ~/.zshrc ./zsh/.zshrc
cp ~/.p10k.zsh ./zsh/.p10k.zsh

# Sync Tmux
cp ~/.tmux.conf ./tmux/.tmux.conf

# Sync TPM plugins
mkdir -p ./tmux/plugins
rsync -a --delete ~/.tmux/plugins/ ./tmux/plugins/

# Sync iTerm profile
cp ~/Library/Preferences/com.googlecode.iterm2.plist ./iterm/

echo "✅ Dotfiles updated. You can now git commit and push."