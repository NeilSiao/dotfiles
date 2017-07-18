# oh-my-zsh Bureau Theme

GREEN="%{$fg_bold[green]%}"
RED="%{$fg_bold[red]%}"
CYAN="%{$fg_bold[cyan]%}"
YELLOW="%{$fg_bold[yellow]%}"
BLUE="%F{039}"
ORANGE="%F{208}"
MAGENTA="%{$fg_bold[magenta]%}"
WHITE="%{$f[white]%}"

COLOR_ARRAY=($GREEN $RED $CYAN $YELLOW $BLUE $MAGENTA $WHITE)

# color reset
RESET_COLOR="%{$reset_color%}"
#
# # which color should be applied?
USERNAME_NORMAL_COLOR=$WHITE
USERNAME_ROOT_COLOR=$RED
HOSTNAME_NORMAL_COLOR=$ORANGE
# # uncomment next line if you want auto-generated hostname color
# #for i in `hostname`; HOSTNAME_NORMAL_COLOR=$COLOR_ARRAY[$[((#i))%7+1]]
HOSTNAME_ROOT_COLOR=$RED
HOSTNAME_COLOR=%(!.$HOSTNAME_ROOT_COLOR.$HOSTNAME_NORMAL_COLOR)
CURRENT_DIR_COLOR=$BLUE
#
# # zsh commands
USERNAME_COMMAND="%n"
HOSTNAME_COMMAND="%m"
CURRENT_DIR="%~"
#
# # output: colors + commands
USERNAME_OUTPUT="%(!..$USERNAME_NORMAL_COLOR$USERNAME_COMMAND$RESET_COLOR@)"
HOSTNAME_OUTPUT="$HOSTNAME_COLOR$HOSTNAME_COMMAND$RESET_COLOR"
CURRENT_DIR_OUTPUT="$CURRENT_DIR_COLOR$CURRENT_DIR"
LAST_COMMAND_OUTPUT="%(?.%(!.$RED.$GREEN).$YELLOW)"
#
#
# # git theming
ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY=")$RED*"
ZSH_THEME_GIT_PROMPT_CLEAN=")"
ZSH_THEME_GIT_PROMPT_UNTRACKED="$BLUE%%"
ZSH_THEME_GIT_PROMPT_MODIFIED="$RED*"
ZSH_THEME_GIT_PROMPT_ADDED="$GREEN+"
ZSH_THEME_GIT_PROMPT_STASHED="$BLUE$"
ZSH_THEME_GIT_PROMPT_EQUAL_REMOTE="$GREEN="
ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE=">"
ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE="<"
ZSH_THEME_GIT_PROMPT_DIVERGED_REMOTE="$RED<>"

# # wrap all together
PROMPT='$USERNAME_OUTPUT$HOSTNAME_OUTPUT:$CURRENT_DIR_OUTPUT $GREEN$(git_prompt_info) $(git_remote_status)
$LAST_COMMAND_OUTPUT%  »» $RESET_COLOR'
RPROMPT='%1(j.fg: [%j].) $RESET_COLOR [%T]'
