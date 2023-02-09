set -x PATH $PATH $HOME/.cargo/bin $HOME/go/bin (yarn global bin) $HOME/.local/bin $HOME/dev/vcpkg $HOME/.local/scripts/
set -x VCPKG_ROOT $HOME/dev/vcpkg  

set -x GPG_TTY (tty)
set -Ux FZF_DEFAULT_OPTS "--color=bg+:#302D41,bg:#1E1E2E,spinner:#F8BD96,hl:#F28FAD --color=fg:#D9E0EE,header:#F28FAD,info:#DDB6F2,pointer:#F8BD96 --color=marker:#F8BD96,fg+:#F2CDCD,prompt:#DDB6F2,hl+:#F28FAD"
alias j z

alias gst "git status"
alias gaa "git add --all"
alias ga. "git add ."
alias gds "git diff --staged"
alias gl "git log --oneline --graph"
alias gcm "git commit -m"

alias ls exa
alias l "exa -al"
alias ll "exa -l"

alias cat bat

alias sa "ssh-add -t 3600"
alias sat "ssh-add -t "
alias sad "ssh-add -d"

alias note "tmux split-window -h (cd ~/.notes && nvim (fzf))"

alias workl "~/.screenlayout/work.sh"

alias r radian

alias us "swaymsg input "type:keyboard" xkb_layout us"
alias se "swaymsg input "type:keyboard" xkb_layout se"

abbr --add vim nvim

bind \cf "tmux-sessionizer"

zoxide init fish | source
starship init fish | source
source ~/.config/fish/conf.d/mocha.fish
eval (ssh-agent -c)
