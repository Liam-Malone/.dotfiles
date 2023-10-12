alias chtheme='kitty +kitten themes'
alias ping='ping -c 5'
alias new='clear; source ~/.bashrc; glow ~/TODO.md 2>/dev/null'
alias nclear='clear; neofetch'
alias open='pcmanfm'
alias kpx='keepassxc-cli open'
alias findsample='echo "find / -iname *tabliss* 2>/dev/null"'
alias vi='vim'
alias vim='nvim'
alias buildodin='odin build src/ -out:main'
alias nzig='~/documents/code/zig/zig-dev-build/zig'
alias build-ghostty='cd ~/oss/ghostty; nzig build -p $HOME/.local -Doptimize=ReleaseFast; cd -'

alias picset='picom -b --config ~/.config/picom/picom.conf'
alias fehset='feh --bg-fill'

export SCSS_IP=$(sed -n 8p ~/documents/.college_details)

alias college='cd ~/documents/college'
alias colssh='ssh $SCSS_IP'
alias rust='cd ~/documents/code/rust'

alias emacs='emacsclient -c -a "emacs"'

alias newbar='pkill waybar; waybar -l trace > ~/documents/waybar-log.log & disown; clear'
alias run-processing='processing-java --sketch=$(pwd) --run'
alias boston-time='timedatectl set-timezone America/New_York; newbar'
alias dublin-time='timedatectl set-timezone Europe/Dublin; newbar'
alias set-github-var='export GITHUB=$(sed -n 2p ~/documents/.github-key)'

alias set-discord-var='export DISCORD_TOKEN=$(sed -n 2p ~/documents/.discord_bot_token)'
