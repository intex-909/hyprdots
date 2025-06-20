# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

# Useful aliases
# Replace ls with eza
#alias ls='eza -l --color=always --group-directories-first --icons'  # long format
alias ls='eza --color=always --icons=always --group-directories-first'
alias l='ls --long --git --no-filesize --no-time --no-user --no-permissions'
alias ll='ls -alh --git --color=always --group-directories-first --icons'
alias la='ls -A'
alias lt='ls --tree --level=2'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias vi='nvim'

# IP
alias ip='ip --color=auto'
alias cat='bat --style=plain --paging=never'

# Git
# alias gl='git log --oneline --decorate --color=always'
alias gl='git lg'
alias gs='git status --short'
alias lg='lazygit'

# journalctl - Get error messages
alias jctl="journalctl -p 3 -xb"

bind -s 'set completion-ignore-case on'

export EDITOR="/usr/bin/nvim"

# Initialize zoxide
eval "$(zoxide init bash)"

# Set up fzf key bindings and fuzzy completion
eval "$(fzf --bash)"

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

# fnm
FNM_PATH="/home/lynx/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="$FNM_PATH:$PATH"
  eval "`fnm env`"
fi
