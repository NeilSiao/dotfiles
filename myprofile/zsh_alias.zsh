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
alias ping='prettyping'
alias delswp="findswp; find . -name '*.swp' | xargs rm"
alias composer='php -d allow_url_fopen=On ~/bin/composer.phar'
alias pbre='php ~/myprofile/phabricommit'
alias gitre='php ~/myprofile/giteacommit'

alias moshirc='mosh --ssh="ssh -p 222" raychang@irc.pixnet.tw'
alias v='vim'

alias gprb='git pull --rebase origin master'
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
alias ls='exa'
alias zipp='zip -e'

alias renamephp='for file in *.html ; do mv "$file" "${file/.html/.php}"; done'
alias chmodfolder='find * -type d -print0 | xargs -0 chmod 0755'
alias chmodfile='find . -type f -print0 | xargs -0 chmod 0644'

alias beha="~/work/pixbehavior/api/behavior.pixplug.in/"
alias initmig="php artisan migrate:refresh --seed";
alias kugp="kubectl get pods";
alias portstate="netstat -anp tcp"

alias runlocal='php -S localhost:8081 -t public/'
