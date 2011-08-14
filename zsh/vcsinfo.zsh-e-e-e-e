# Use the following within your prompt
#   ${vcs_info_msg_0_}
#
# The style of vcs_info can be tweaked within a theme by modifying the output
# using zstyle.
#
# http://zsh.sourceforge.net/Doc/Release/User-Contributions.html#IDX2133
#

typeset -ga precmd_functions
autoload -Uz vcs_info

zstyle ':vcs_info:*' enable hg git bzr svn
zstyle ':vcs_info:*:*' formats "$ZSH_THEME_VCS_PROMPT"
zstyle ':vcs_info:(hg*|git*):*' get-revision true
zstyle ':vcs_info:(hg*|git*):*' check-for-changes true
zstyle ':vcs_info:(hg*|git*):*' unstagedstr "$ZSH_THEME_VCS_PROMPT_DIRTY"

# Git Config
# zstyle ':vcs_info:git*+set-message:*' hooks git-st

# Mercurial Config
zstyle ':vcs_info:hg*:*' get-bookmarks true
zstyle ':vcs_info:hg*:*' get-mq true
zstyle ':vcs_info:hg*:*' get-unapplied true
zstyle ':vcs_info:hg*:*' patch-format "$ZSH_THEME_VCS_PROMPT_PATCH"
zstyle ':vcs_info:hg*:*' nopatch-format "$ZSH_THEME_VCS_PROMPT_PATCH"

zstyle ':vcs_info:hg*:*' hgrevformat "%r" # Only show local revision.
zstyle ':vcs_info:hg*:*' branchformat "%b" # Only show branch.

zsh_vcsinfo_precmd() {
  vcs_info
}

vcs_prompt_info() {
  echo "${vcs_info_msg_0_}"
}

precmd_functions+='zsh_vcsinfo_precmd'

### git: Show +N/-N when your local branch is ahead-of or behind remote HEAD.
# Make sure you have added misc to your 'formats':  %m
function +vi-git-st() {
    local ahead behind
    local -a gitstatus

    # for git prior to 1.7
    # ahead=$(git rev-list origin/${hook_com[branch]}..HEAD | wc -l)
    ahead=$(git rev-list ${hook_com[branch]}@{upstream}..HEAD 2>/dev/null | wc -l)
    (( $ahead )) && gitstatus+=( "+${ahead}" )

    # for git prior to 1.7
    # behind=$(git rev-list HEAD..origin/${hook_com[branch]} | wc -l)
    behind=$(git rev-list HEAD..${hook_com[branch]}@{upstream} 2>/dev/null | wc -l)
    (( $behind )) && gitstatus+=( "-${behind}" )

    hook_com[misc]+=${(j:/:)gitstatus}
}

