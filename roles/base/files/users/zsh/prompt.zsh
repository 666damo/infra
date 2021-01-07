# Set the prompt
newline=$'\n'

#separator=$'\ue0b0'

PROMPT_1='%(?.%F{green}🟢.%F{red}🔴%?)%f %D{%F %R %Z}'
PROMPT_2='%{%K{black}%}%{%F{default}%} %B%(!.%{%F{yellow}%}.%{%F{blue}%})%n%F{white%} at %F{cyan}%m%b %{%K{blue}%F{black}%}%{%F{black}%} %(1C.%~/.%~) %{%k%F{blue}%}%{%f%}'
PROMPT_3='%f%b %(!.⚡.🦄) '

PROMPT=${PROMPT_1}${newline}${newline}${PROMPT_2}${newline}${PROMPT_3}


# ✔✘❌🐱‍👤🐱‍🏍✅✔🟢🔴🛠🔧🦄⚡