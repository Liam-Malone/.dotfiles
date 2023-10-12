#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -lG'
alias la='ls -lA'

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

export RASPBERRY_IP=$(sed -n 3p ~/documents/.raspi_info)
export RASPATH=$(sed -n 5p ~/documents/.raspi_info)

flamingo='\e[3;m\e[1;35m[🦩: \W]\$ \e[m\e[m\]'
penguin='\e[3;m\e[1;34m[🐧: \W]\$ \e[m\e[m\]'
shamrock='\e[3;m\e[1;32m[☘️: \W]\$ \e[m\e[m\]'

alias simple='export PS1="\e[1;34m\$ \e[m"'
alias flamingo='export PS1=$flamingo'
alias penguin='export PS1=$penguin'
alias shamrock='export PS1=$shamrock'

PS1=$penguin

set -o vi

export GIT_EDITOR=nvim

export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export SDL_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
export GLFW_IM_MODULE=ibus


export GTK_THEME='Adwaita:dark'
export GTK2_RC_FILES='/usr/share/themes/Adwaita-dark/gtk-2.0/gtkrc'

export QT_QPA_PLATFORM='wayland'
export QT_QPA_PLATFORMTHEME='qt6ct'

export PATH=$PATH:$HOME/paru/pkg/paru/usr/bin:$HOME/scripts:$HOME/odin:$HOME/.cargo/bin:$HOME/.local/bin:$HOME/.emacs.d/bin

neofetch

#[ -f ~/.fzf.bash ] && source ~/.fzf.bash

[ -f "/home/liamm/.ghcup/env" ] && source "/home/liamm/.ghcup/env" # ghcup-env