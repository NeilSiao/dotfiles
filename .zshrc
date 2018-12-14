# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export PROFILE="$HOME/myprofile"
export LANG=en_US.UTF-8
export PATH="/usr/local/opt/php@7.0/bin:$PATH"

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
plugins=(git zsh-completions zsh-autosuggestions fast-syntax-highlighting)

source $ZSH_CUSTOM/powerlevel9k_setting;

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

source $ZSH/oh-my-zsh.sh

source $ZSH_CUSTOM/zsh_bootstrap;

export PATH="./node_modules/.bin:/usr/local/sbin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/raychang/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/raychang/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/raychang/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/raychang/google-cloud-sdk/completion.zsh.inc'; fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
