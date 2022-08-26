if status is-interactive
    # Commands to run in interactive sessions can go here
    eval "$(brew shellenv)"

    # NodeJS binraies
    if test -d /usr/local/opt/node@16/bin
        fish_add_path /usr/local/opt/node@16/bin
    end

    if test -d /opt/homebrew/opt/node@16/bin
        fish_add_path /opt/homebrew/opt/node@16/bin
    end

    # python path management by pyenv
    set -Ux PYENV_ROOT $HOME/.pyenv
    set -U fish_user_paths $PYENV_ROOT/bin $fish_user_paths
    pyenv init - | source

    # starts TMUX carefully
    if not set -q TMUX
    	exec tmux
    end
end
