## General
export EDITOR=vim        # エディタをvimに設定
export LANG=ja_JP.UTF-8  # 文字コードをUTF-8に設定
export KCODE=u           # KCODEにUTF-8を設定
export AUTOFEATURE=true

setopt no_beep           # ビープ音
setopt auto_cd           # ディレクトリ名の入力のみで移動
setopt auto_pushd        # cd時にディレクトリスタックにpushdする
setopt correct           # コマンドのスペルを訂正する
setopt magic_equal_subst # =以降も補完する(--prefix=/usrなど)
setopt prompt_subst      # プロンプト定義内で変数置換やコマンド置換を扱う
setopt notify            # バックグラウンドジョブの状態変化を即時報告
setopt equals            # =commandを`which command`と同じ処理

### Complement ###
autoload -U compinit; compinit # 補完機能を有効
setopt auto_list               # 補完候補を一覧で表示(d)
setopt auto_menu               # 補完キー連打で補完候補を順に表示(d)
setopt list_packed             # 補完候補をできるだけ詰めて表示
setopt list_types              # 補完候補にファイルの種類も表示
bindkey "^[[Z" reverse-menu-complete  # Shift-Tabで補完候補を逆順("\e[Z"でも動作する)
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' # 補完時に大文字小文字を区別しない

setopt hist_ignore_dups   # 直前と同じコマンドはヒストリに追加しない

# Path to your oh-my-zsh configuration.
ZSH=$HOME/development/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="agnoster"

export DEFAULT_USER=`whoami`

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias zshconfig="sublime2 ~/.zshrc"
alias ohmyzsh="sublime2 ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to  shown in the command execution time stamp
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git ruby gem)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH=$HOME/development/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

# # Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

export PATH="$HOME/.rbenv/bin:$PATH"

eval "$(rbenv init -)"

### Added by the Heroku Toolbelt
##export PATH="/usr/local/heroku/bin:$PATH"

# export PATH=$PATH:~/.AWS-ElasticBeanstalk-CLI-2.6.4/eb/macosx/python2.7/
# export PATH=$PATH:~/.AWS-ElasticBeanstalk-CLI-2.6.4/api/bin/
export PATH=$PATH:/Applications/eclipse/sdk/platform-tools/
export PATH=$HOME/.nodebrew/current/bin:$PATH

export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=~/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1

export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/opt/X11/lib/pkgconfig

export GOPATH=$HOME/go

source ~/development/.oh-my-zsh/plugins/zsh-notify/notify.plugin.zsh
export SYS_NOTIFIER="/usr/local/bin/terminal-notifier"
export NOTIFY_COMMAND_COMPLETE_TIMEOUT=15


### Docker
#docker-machine env dev > /dev/null

fpath=(~/development/.oh-my-zsh/custom/plugins/zsh-completions/src $fpath)
plugins+=(zsh-completions)
autoload -U compinit && compinit
