# Set up environment variables for login shell
export LANG="en_US.UTF-8"
export EDITOR="nvim"
export TERM="xterm-256color"
export DOTFILES="$HOME/dotfiles"
export ROOT_ENV="$DOTFILES/env-files/.config/env-files"
export ROOT_LOGS="$DOTFILES/.cache/logs"

[ -f "$HOME/.cargo/env" ] && . "$HOME/.cargo/env"
[ -d "$HOME/.cargo/bin" ] && PATH="$HOME/.cargo/bin:$PATH"
[ -d "$HOME/go/bin" ] && PATH="$HOME/go/bin:$PATH"

if [[ $- == *i* ]]; then
    if [ -f ~/.bashrc ]; then
        source ~/.bashrc
    fi
fi
