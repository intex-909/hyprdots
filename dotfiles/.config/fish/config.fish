# Set PATH
# fish_add_path -g -p $HOME/.local/bin
fish_add_path -p $HOME/.local/bin $HOME/.cargo/bin

# Delete welcome message
set -g fish_greeting ""

# set -g tide_left_prompt_items pwd context git status newline character
# set -g tide_git_icon 

# Set <C-space> for accept autosuggestion
bind ctrl-space accept-autosuggestion

# Useful aliases
# Replace ls with eza
#alias ls='eza -l --color=always --group-directories-first --icons'  # long format
alias ls='eza --color=always --icons=always --group-directories-first'
alias l='ls --long --git --no-filesize --no-time --no-user --no-permissions'
alias ll='ls -alh --git --color=always --group-directories-first --icons'
alias la='ls -A'
alias lt='ls --tree --level=2'
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

# protontricks
# alias protontricks='flatpak run com.github.Matoking.protontricks'

# Editor
set --export EDITOR "/usr/bin/nvim"

function y
	set tmp (mktemp -t "yazi-cwd.XXXXXX")
	yazi $argv --cwd-file="$tmp"
	if set cwd (command cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
		builtin cd -- "$cwd"
	end
	rm -f -- "$tmp"
end

# Set up fzf key bindings
fzf --fish | source

zoxide init fish | source

