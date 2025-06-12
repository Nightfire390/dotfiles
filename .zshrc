HISTFILE=~/.histfile
HISTSIZE=2000

SAVEHIST=5000
setopt autocd extendedglob nomatch notify nocaseglob sharehistory appendhistory incappendhistory histignoredups
unsetopt beep
bindkey -e
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey "^[[3~" delete-char
# Compint auto-completion

# Tty colors
eval "$(dircolors -b)"

# menu's white background
zstyle ':completion:*:*:*:*:*' menu select
# Complete . and .. special directories
zstyle ':completion:*' special-dirs true
# Colors
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*:commands' list-colors '=*=32'


autoload -Uz compinit && compinit

# Prompt
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '(%F{#4466aa}%B%b%f %%b)'
setopt PROMPT_SUBST

#PROMPT='[%n@%m %1~${vcs_info_msg_0_}]$ '
#PROMPT='%B%F{#545faf}%1"Nightfire%f %F{white}%1~%f%b:${vcs_info_msg_0_}%B%%%b '
#PROMPT='%B%F{#b72042}%1"Nightfire:%f %F{blue}%1~%f%b:${vcs_info_msg_0_}%B%%%b '

# red = #b72042 at %, grey = #404055, blue = #4466aa}
PROMPT='%B%F{#b72052}%1"Nightfire:%f %F{#667788}%1~%f%b:${vcs_info_msg_0_}%B%%%b '

#PROMPT='%F{red}%n@%m%f:%F{blue}%2~%f$ '

export PATH="$PATH:$HOME/.local/bin:$HOME/.local/share/gem/ruby/3.3.0/bin"

# Aliases
alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias vim="nvim"
alias vi="nvim"

alias eog="loupe"

alias update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias ff="fastfetch"
alias eog="iv"
alias aura="sudo /opt/aurora-linux-3.6.8-beta+1.AppImage"

#alias installtime="expac --timefmt='%Y-%m-%d %T' '%l\t%n'|sort -n"

export PATH="$PATH:$HOME/.local/bin:$HOME/go/bin"
