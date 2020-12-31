# Setup fzf
# ---------
alias preview="fzf --preview 'bat --color \"always\" {}'"

if [[ ! "$PATH" == */usr/local/opt/fzf/bin* ]]; then
  export PATH="$PATH:/usr/local/opt/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/usr/local/opt/fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/usr/local/opt/fzf/shell/key-bindings.zsh"

export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude "(.git|node_modules|vendor)" . ~/work/'
export FZF_DEFAULT_OPTS="--bind='ctrl-o:execute(v {})+abort'"
export FZF_CTRL_T_OPTS="--preview '(bat --color \"always\" {}) 2> /dev/null | head -200'"
