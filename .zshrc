### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing DHARMA Initiative Plugin Manager (zdharma/zinit)…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zinit-zsh/z-a-patch-dl \
    zinit-zsh/z-a-as-monitor \
    zinit-zsh/z-a-bin-gem-node

### End of Zinit's installer chunk
export PROFILE="$HOME/myprofile"
export LANG=en_US.UTF-8

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
esac

export GOPATH="$HOME/work/go"
export GOBIN="$GOPATH/bin"
export GOPROXY=https://proxy.golang.org

export PATH="./node_modules/.bin:/usr/local/sbin:/Users/raychang/Library/Python/3.7/bin:$PATH:$GOBIN:/usr/local/opt/node@8/bin:$PATH"
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/raychang/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/raychang/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/raychang/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/raychang/google-cloud-sdk/completion.zsh.inc'; fi
source <(kubectl completion zsh)

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
