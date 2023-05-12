export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export RCREPO="setting"
export PROFILE="$HOME/$RCREPO/myprofile"
HISTFILE="${HOME}/.zsh_history"
HISTSIZE=1000
SAVEHIST=1000
ZSH_CUSTOM="$HOME/$RCREPO/myprofile"
source $ZSH_CUSTOM/zsh_bootstrap; 


# zmodload zsh/zprof #//profiling tools, use zprof to show loading list
#source <(zsh)

#User configuration
host=$(hostname)

case $host in
    "aqua" | "saturn")
        export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/texbin:/net/account/pixuser/raychang/bin"
        export EDITOR='/usr/local/bin/vim'
        ;;
    "neilhsiao-mac13.local")
        export PATH=/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/texbin:$HOME/.composer/vendor/bin
        export EDITOR='/usr/local/bin/vim'
        #export EDITOR=/usr/local/Cellar/vim
        ;;
    *)
       ZSH_THEME="powerlevel10k/powerlevel10k"
        ;;
esac

# export GOPATH="$HOME/work/go"
# export GOBIN=$(go env GOPATH)/bin
#export GOPROXY=https://proxy.golang.org

# export PATH="./node_modules/.bin:/usr/local/sbin:/Users/ray.zhang/Library/Python/3.7/bin:$PATH:$GOBIN:/usr/local/opt/node@10/bin:$PATH"
#export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
#if [ -f '/Users/raychang/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/raychang/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
#if [ -f '/Users/raychang/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/raychang/google-cloud-sdk/completion.zsh.inc'; fi
#source <(kubectl completion zsh)

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
### End of Zinit's installer chunk
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export PATH="/usr/local/opt/mongodb-community@3.4/bin:$PATH"
export PATH="/Users/neil.hsiao/work/104-ap/gradle-4.10.3/bin:$PATH"
#export PATH="/usr/local/opt/php@7.1/bin:$PATH"
#export PATH="/usr/local/opt/php@7.1/sbin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# add my own zsh-theme
source "$ZSH_CUSTOM/themes/neil.p10k.zsh-theme"

# setting visual studio code 
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
#export PATH="/usr/local/opt/php@7.4/bin:$PATH"
#export PATH="/usr/local/opt/php@7.4/sbin:$PATH"

# add cd history 
setopt AUTO_PUSHD                  # pushes the old directory onto the stack
setopt PUSHD_MINUS                 # exchange the meanings of '+' and '-'
setopt CDABLE_VARS                 # expand the expression (allows 'cd -2/tmp')
autoload -U compinit && compinit   # load + start completion
zstyle ':completion:*:directory-stack' list-colors '=(#b) #([0-9]#)*( *)==95=38;5;12'

export PATH="$HOME/.phpenv/bin:$PATH"

# added by travis gem
[ ! -s /Users/neil.hsiao/.travis/travis.sh ] || source /Users/neil.hsiao/.travis/travis.sh
