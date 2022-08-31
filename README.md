# Local Development Environment on top of Fish Shell and Neovim

## Toolset

- fish shell and oh my fish framework
  Shell with commands highlighting and advanced autocompletion of command options.
- fzf
  Fuzzy finder for everything. Also shell history search.
- bat
  cat with syntax highlighting. Used by fzf.vim for previews.
- git-delta
  git pager with visual representation of diffs
- lazygit
  terminal visual git client
- sdkman
  SDK manager for java mostly
- ripgrep
  cli search. used by CocSearch.

### Python-specific tools

- pipx
  For python app installation into isolated environments.
- pyright
  Static type checker for Python with LSP.
- pyenv
  Python version manager.

## How I configure my environment

### OS specific configuration

1. Install MacOS dev tools (just run dev command like git to initiate the process)
2. Use Option as Meta key in Terminal Keyboard configuration
3. Disable C-space and C-A-space hotkeys for input source switching.
   There is a separate button on a keyboard, but this hotkey is used by autocompletion.

### Software

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
        brew install pyenv node@16 tmux lazygit git-delta fzf bat neovim ripgrep
        /usr/local/opt/fzf/install || /opt/homebrew/opt/fzf/install
5. Configure Fishshell and CLI tools
        git clone git@github.com:knowlix/config.git
        ln -sf ~/Projects/config/fish/config.fish ~/.config/fish/config.fish
        ln -sf ~/Projects/config/fish/functions/fish_greeting.fish ~/.config/fish/functions/fish_greeting.fish
        ln -sf ~/Projects/config/fish/functions/fish_right_prompt.fish ~/.config/fish/functions/fish_right_prompt.fish
        ln -sf ~/Projets/config/fish/functions/fish_user_key_bindings.fish ~/.config/fish/functions/fish_user_key_bindings.fish
        ln -sf ~/Projects/config/git/.gitconfig  ~/.gitconfig
        ln -sf ~/Projects/config/lazygit/config.yml ~/Library/Application\ Support/lazygit/config.yml
        mkdir ~/.config/nvim && ln -sf ~/Projects/config/nvim/init.vim ~/.config/nvim/init.vim
        ln -sf ~/Projets/config/nvim/coc-settings.json ~/.config/nvim/coc-settings.json
6. Nerd Font
        brew tap homebrew/cask-fonts
        brew install --cask font-fira-code-nerd-font
        select font in terminal
7. Configure Neovim
        sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
        nvim ~/.config/nvim/init.vim
        #:PlugInstall
8. Install sdkman
        curl -s "https://get.sdkman.io" | bash
        omf install sdk
