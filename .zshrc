# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export PROFILE="$HOME/myprofile"
export LANG=en_US.UTF-8

ZSH_CUSTOM=$HOME/myprofile

DISABLE_AUTO_TITLE="true"
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.

HIST_STAMPS="yyyy-mm-dd"
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git, tmux)

# User configuration
host=$(command hostname)
case $host in
    "aqua" | "saturn")
        export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/texbin:/net/account/pixuser/raychang/bin"
        export EDITOR='/usr/local/bin/vim'
        ;;
    "raychang-MacbookPro.local")
        ZSH="$HOME/.oh-my-zsh"
        export PATH=/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/texbin:$HOME/.composer/vendor/bin
        export EDITOR=/usr/local/bin/vim
        ;;
    *)
        ZSH_THEME="ray"
        ;;
esac

source $ZSH/oh-my-zsh.sh

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias mk="make"
alias g='grep --color=auto -rin'
alias delswp="findswp; find . -name '*.swp' | xargs rm"
alias composer='php -d allow_url_fopen=On ~/bin/composer.phar'

alias moshirc='mosh --ssh="ssh -p 222" raychang@irc.pixnet.tw'
alias v='vim'
alias gst='git status'
alias gci='git commit -m'
alias gad='git add'
alias gcia='git commit --amend'
alias gco='git checkout'
alias gdf='git diff'
alias gdfc='git diff --cached'

# rebase
alias grb='git rebase'
alias grbc='git rebase --continue'
alias grba='git rebase --abort'
#
# # cherry-pick
 alias gcherry='git cherry-pick'
# #clean
 alias gclean='git clean -df'

alias gbr='git branch'
alias gadp='git add . -p'

alias gshu='git stash -u'
alias gshp='git stash pop'
alias mysqlstart='mysql.server start'
alias ll='ls -ahlF'

alias renamephp='for file in *.html ; do mv "$file" "${file/.html/.php}"; done'
alias chmodfolder='find * -type d -print0 | xargs -0 chmod 0755'
alias chmodfile='find . -type f -print0 | xargs -0 chmod 0644'

export PATH="./node_modules/.bin:/usr/local/sbin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/raychang/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/raychang/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/raychang/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/raychang/google-cloud-sdk/completion.zsh.inc'; fi
