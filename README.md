# Local Development Environment on top of Fish Shell and Neovim

## Toolset:
 - fish shell and oh my fish framework
  > Shell with commands highlighting and advanced autocompletion of supported command options.
 - fzf
  > Fuzzy finder for everything. Also shell history search.
 - bat
  > cat with syntax highlighting. Used by fzf.vim for previews.
 - git-delta
  > git pager with visual representation of diffs
 - lazygit
  > terminal visual git client

### Python-specific tools
 - pipx
  > For python app installation into isolated environments. Useful for LSP servers installation.
 - pyright
  > Static type checker for Python with LSP.
 - pyenv
  > Python version manager.

## How I configure my environment
0. Install MacOS dev tools (just run dev command like git to initiate the process)
1. Install Homebrew
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
2. Install Fish Shell
	brew install fish
        echo $(which fish) | sudo tee -a /etc/shells
        chsh -s $(which fish)
3. Install Oh My Fish
        curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
        omf install robbyrussell
4. Install basic cli environment tools
	brew install pyenv node@16 tmux lazygit git-delta fzf bat
5. Configure Fishshell and CLI tools
        git clone git@github.com:knowlix/config.git
        ln -sf ~/Projects/config/fish/config.fish ~/.config/fish/config.fish
        ln -sf ~/Projects/config/fish/functions/fish_greeting.fish ~/.config/fish/functions/fish_greeting.fish
        ln -sf ~/Projects/config/fish/functions/fish_right_prompt.fish ~/.config/fish/functions/fish_right_prompt.fish
        ln -sf ~/Projects/config/git/.gitconfig  ~/.gitconfig
        ln -sf ~/Projects/config/lazygit/config.yml ~/Library/Application\ Support/lazygit/config.yml
6. Nerd Font
        brew tap homebrew/cask-fonts
        brew install --cask font-fira-code-nerd-font
6. Install and configure Neovim
