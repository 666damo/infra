# Set bindkey to emacs mode
bindkey -e

# Restore history searching with ^r
#bindkey '^r' history-incremental-search-backward

# Use alt and arrow keys for moving directories
cdUndoKey() {
  popd      > /dev/null
  zle       reset-prompt
  echo
  ls
  echo
}

cdParentKey() {
  pushd .. > /dev/null
  zle      reset-prompt
  echo
  ls
  echo
}

zle -N                 cdParentKey
zle -N                 cdUndoKey
bindkey '^[[1;3A'      cdParentKey
bindkey '^[[1;3D'      cdUndoKey

# To find keymap, run 'cat', then type the key or combo, ctrl c to exit
bindkey "^[[1;5D"      backward-word           # [ctrl] + [left]
bindkey "^[[1;5C"      forward-word            # [ctrl] + [right]
bindkey "^[[1~"        beginning-of-line       # [Home]
bindkey "^[[4~"        end-of-line             # [End]
bindkey "^[[3~"        delete-char             # [Delete]

# Control-x-e to open current line in $EDITOR, awesome when writting functions or editing multiline commands.
autoload -U edit-command-line
zle -N edit-command-line
bindkey '^x^e' edit-command-line
