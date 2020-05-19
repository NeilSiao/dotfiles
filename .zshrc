export PROFILE="$HOME/myprofile"
export LANG=en_US.UTF-8
HISTFILE="${HOME}/.zsh_history"
HISTSIZE=10000
SAVEHIST=10000
ZSH_CUSTOM=$HOME/myprofile
source $ZSH_CUSTOM/zsh_bootstrap;

# User configuration
host=$(command hostname)
case $host in
    "aqua" | "saturn")
        export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/texbin:/net/account/pixuser/raychang/bin"
        export EDITOR='/usr/local/bin/vim'
        ;;
    "raychang-MacbookPro.local")
        export PATH=/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/texbin:$HOME/.composer/vendor/bin
        export EDITOR=/usr/local/Cellar/vim
        ;;
    *)
        ZSH_THEME="powerlevel10k/powerlevel10k"
        ;;
    "rayzhang.local")
        export PATH=/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/texbin:$HOME/.composer/vendor/bin
        export EDITOR=/usr/local/Cellar/vim
        ;;
    *)
        ZSH_THEME="powerlevel10k/powerlevel10k"
        ;;
esac

export GOPATH="$HOME/work/go"
export GOBIN="$GOPATH/bin"
export GOPROXY=https://proxy.golang.org

export PATH="./node_modules/.bin:/usr/local/sbin:/Users/ray.zhang/Library/Python/3.7/bin:$PATH:$GOBIN:/usr/local/opt/node@10/bin:$PATH"
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/raychang/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/raychang/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/raychang/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/raychang/google-cloud-sdk/completion.zsh.inc'; fi
source <(kubectl completion zsh)

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
