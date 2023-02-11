if status is-interactive
    # Commands to run in interactive sessions can go here

    if test -e /opt/homebrew/bin/brew
        eval "$(/opt/homebrew/bin/brew shellenv)"
    else
        eval "$(brew shellenv)"
    end

    # NodeJS binraies
    if test -d /usr/local/opt/node@18/bin
        fish_add_path /usr/local/opt/node@18/bin
    end

    if test -d /opt/homebrew/opt/node@18/bin
        fish_add_path /opt/homebrew/opt/node@18/bin
    end

    # python path management by pyenv
    set -Ux PYENV_ROOT $HOME/.pyenv
    set -U fish_user_paths $PYENV_ROOT/bin $fish_user_paths
    pyenv init - | source

    # batcat to colorize man pages
    set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"

    # starts TMUX carefully
    if not set -q TMUX
    	exec tmux
    end
end
