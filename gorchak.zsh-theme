function node_prompt_version {
    if which node &> /dev/null; then
        echo "${FG[076]}⬢%{$reset_color%} ${FG[076]}$(node -v) %{$reset_color%}"
    fi
}

PROMPT="%(?:🍐 :🍊 )"
PROMPT+='${FG[075]}%c%{$reset_color%} $(node_prompt_version)$(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="${FG[078]}⌥ "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="${FG[214]} ✗"
ZSH_THEME_GIT_PROMPT_CLEAN=""
