if status is-interactive
    # Commands to run in interactive sessions can go here
    eval "$(/opt/homebrew/bin/brew shellenv)"

    # NodeJS binraies
    fish_add_path /opt/homebrew/opt/node@16/bin

    # python path management by pyenv
    set -Ux PYENV_ROOT $HOME/.pyenv
    set -U fish_user_paths $PYENV_ROOT/bin $fish_user_paths
    pyenv init - | source

    # starts TMUX carefully
    if not set -q TMUX
    	exec tmux
    end
end
