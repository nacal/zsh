# zsh-completions(補完機能)の設定
if [ -e /usr/local/share/zsh-completions ]; then
    fpath=(/usr/local/share/zsh-completions $fpath)
fi
autoload -U compinit
compinit -u

# prompt
PROMPT='%m@%n %F{1}%~%f$ '

##################################################
### aliases 
# Git系
alias g='git'
alias gs='git status'
alias gb='git branch'
alias gc= 'git clone'
alias gco='git checkout'
alias gct='git commit'
alias gg='git grep'
alias ga='git add'
alias gd='git diff'
alias gl='git log'
alias gcma='git checkout master'
alias gfu='git fetch upstream'
alias gfo='git fetch origin'
alias gmod='git merge origin/develop'
alias gmud='git merge upstream/develop'
alias gmom='git merge origin/master'
alias gcm='git commit -m'
alias gpo='git push origin'
alias gpom='git push origin master'
alias gst='git stash'
alias gsl='git stash list'
alias gsu='git stash -u'
alias gsp='git stash pop'

#vim教
alias v='vim'
alias vi='vim'
#ls系
alias ls='ls -G'
alias la='ls -a'
alias ll='ls -lh'
#処理確認
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'
#よく使うコマンド(ゆくゆくはAtoZまで埋めたい！)
alias c='clear'
alias h='history'
#zsh(zshいじる趣味が無いなら要らない)
alias zsh='vim ~/.zshrc'
alias szsh='source ~/.zshrc'

##################################################
### オプション

# 同時に起動しているzshの間でhistoryを共有する
setopt share_history

# 同じコマンドをhistoryに残さない
setopt hist_ignore_all_dups

# スペースから始まるコマンドをhistoryに残さない
setopt hist_ignore_space

# historyに保存するときに余分なスペースを削除する
setopt hist_reduce_blanks

# 高機能なワイルドカード展開を使用する
setopt extended_glob

# cd無しでもディレクトリ移動
setopt auto_cd

# コマンドのスペルミスを指摘
setopt correct
