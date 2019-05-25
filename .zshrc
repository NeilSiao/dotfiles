# Path to your oh-my-zsh installation.
export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

export PROFILE="$HOME/myprofile"
export LANG=en_US.UTF-8
export PATH="/usr/local/opt/php@7.0/bin:$PATH"

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
        ZSH="$HOME/.oh-my-zsh"
        export PATH=/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/texbin:$HOME/.composer/vendor/bin
        export EDITOR=/usr/local/Cellar/vim
        ;;
    *)
        #ZSH_THEME="ray"
        ZSH_THEME="powerlevel9k/powerlevel9k"
        ;;
esac

export PATH="./node_modules/.bin:/usr/local/sbin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/raychang/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/raychang/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/raychang/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/raychang/google-cloud-sdk/completion.zsh.inc'; fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
