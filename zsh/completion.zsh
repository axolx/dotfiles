# matches case insensitive for lowercase
#zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# pasting with tabs doesn't perform completion
zstyle ':completion:*' insert-tab pending

# this gets us the symbolic color names and terminal details
autoload colors zsh/terminfo
colors

# set the completer style; the strings after 'completer' specify the completion
# functions, which are called in the l2r order they are specified
# '_expand' does not do completion, but sets things up
# '_complete' lists all possible completions
# '_correct' try to correct the spelling of the word
# '_approximate' try completions of the corrections
zstyle ':completion:*' completer _expand _complete _correct _approximate
# we can fine-tune each of these completer functions

# some fine-tuning
zstyle ':completion:*' auto-description 'specify: %d'
# show completion categories in green
zstyle ':completion:*' format "%{${fg[green]}%}Completing %d%{${fg[default]}%}"
#zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2 eval "$(gdircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
# sort the match-list case-insensitive
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' verbose true

# rehash when need to complete commands (so newly installed will be found immediately)
# small performance hit, but should be negligible
zstyle ":completion:*:commands" rehash 1

# don't try to complete commands I don't have
zstyle ':completion:*:functions' ignored-patterns '_*'

# process completion
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;34=0=01'
zstyle ':completion:*:*:*:*:processes' command "ps -u `whoami` -o pid,user,comm -w -w"

# Use caching so that commands like apt and dpkg complete are useable
zstyle ':completion::complete:*' use-cache on
zstyle ':completion::complete:*' cache-path ~/dotfiles/zsh/cache



# add filename completion to `c` alias (see aliases.zsh)
compdef '_files' c
