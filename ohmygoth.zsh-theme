username() {
   echo "%{$FG[054]%}%n%{$reset_color%}"
}

# current directory, two levels deep
directory() {
   echo "%B%{$FG[054]%}%2~%b%{$reset_color%}"
}

# current time with milliseconds
current_time() {
   echo "%{$FG[052]%}%*%{$reset_color%}"
}

# returns 😵 if there are errors, nothing otherwise
return_status() {
   echo "%(?..😵)"
}

# set the git_prompt_info text
ZSH_THEME_GIT_PROMPT_PREFIX="%{$FG[159]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" 💀"
ZSH_THEME_GIT_PROMPT_CLEAN=" 😈"

# putting it all together
PROMPT='╭─ %B$(username) ⚧ $(directory) $(git_prompt_info)%b
       ╰─→ '
RPROMPT='$(return_status) $(current_time)'
