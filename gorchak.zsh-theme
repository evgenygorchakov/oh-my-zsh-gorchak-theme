GREEN="%{$fg_bold[green]%}"
RED="%{$fg_bold[red]%}"
RESET="%{$reset_color%}"

function node_prompt_version {
    if which node &> /dev/null; then
        echo "$GREEN⬢ $(node -v) $RESET"
    fi
}

PROMPT="%(?:${FG[075]}➜ :$RED➜ )"
PROMPT+='${FG[075]}%c$RESET $(node_prompt_version)$(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="${FG[078]}⌥ "
ZSH_THEME_GIT_PROMPT_SUFFIX="$RESET "
ZSH_THEME_GIT_PROMPT_DIRTY="${FG[214]} ✗$RESET"
ZSH_THEME_GIT_PROMPT_CLEAN=""
