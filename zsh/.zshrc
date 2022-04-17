# Aliases
source ~/.aliases.sh

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats ' %b'

setopt PROMPT_SUBST

# Prompt
PROMPT='%F{blue}%~ %#%F{white} '
RPROMPT='%F{yellow}${vcs_info_msg_0_}'
