# oh-my-zsh theme - by ilBuso

# design credit to (https://ohmyposh.dev/docs/themes#amro)

# for the unicode character to work a nerdfont (or similar) is needed

#-----------------------------------------#

# use extended color palette if available
# credit to (https://github.com/ohmyzsh/ohmyzsh/blob/master/themes/steeef.zsh-theme)
if [[ $terminfo[colors] -ge 256 ]]; then
    lightblue="%F{#45F1C2}"
    blue="%F{#0CA0D8}"
    dirtylightblue="%F{#14A5AE}"
    red="%F{#CD5E42}"
else
    lightblue="%F{cyan}"
    blue="%F{blue}"
    dirtylightblue="%F{cyan}"
    red="%F{red}"
fi

#-----------------------------------------#

#remove all git simbols
ZSH_THEME_GIT_PROMPT_ADDED=""
ZSH_THEME_GIT_PROMPT_MODIFIED=""
ZSH_THEME_GIT_PROMPT_DELETED=""
ZSH_THEME_GIT_PROMPT_RENAMED=""
ZSH_THEME_GIT_PROMPT_UNMERGED=""
ZSH_THEME_GIT_PROMPT_UNTRACKED=""
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE=""
ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE=""
ZSH_THEME_GIT_PROMPT_REMOTE_STATUS_DETAILED=false
ZSH_THEME_GIT_PROMPT_SUFFIX=""

# remove "git:(" and add branch simbol
ZSH_THEME_GIT_PROMPT_PREFIX="on %{$dirtylightblue%}\uE0A0"

#-----------------------------------------#

# %n = username
# %m = machine name
# %~ = path to pwd
# $(git_prompt_info)$(virtualenv_prompt_info) = print the current git branch

# %{$reset_color%} = reset color to default
# %{$color%} = set the color --> for color sheet (https://github.com/zthxxx/jovial/blob/master/README.md)

# what actually appears on the zsh
PROMPT=$'%{$lightblue%}%n@%m %{$reset_color%}on %{$blue%}%~%{$reset_color%} $(git_prompt_info)$(virtualenv_prompt_info)
%{$red%}#%{$reset_color%} '



