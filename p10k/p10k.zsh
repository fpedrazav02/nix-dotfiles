# ~/.p10k.zsh
# Powerlevel10k configuration for a clean and elegant dark theme

# Prompt layout
typeset -g POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
  os_icon
  dir
  vcs
)

typeset -g POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(
  status
  command_execution_time
  background_jobs
  time
)

# General prompt options
typeset -g POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
typeset -g POWERLEVEL9K_PROMPT_ON_NEWLINE=true   # Change to false for single line prompt
typeset -g POWERLEVEL9K_PROMPT_EOL_MARK=""

# Prompt character
typeset -g POWERLEVEL9K_PROMPT_CHAR_OK_VIVIS_FOREGROUND=110   # Soft cyan
typeset -g POWERLEVEL9K_PROMPT_CHAR_ERROR_VIVIS_FOREGROUND=204  # Soft red
typeset -g POWERLEVEL9K_PROMPT_CHAR_OK_VIVIS_CONTENT='❯'
typeset -g POWERLEVEL9K_PROMPT_CHAR_ERROR_VIVIS_CONTENT='❯'

# OS icon
typeset -g POWERLEVEL9K_OS_ICON_FOREGROUND=109  # Teal

# Directory segment
typeset -g POWERLEVEL9K_DIR_FOREGROUND=110      # Soft cyan
typeset -g POWERLEVEL9K_DIR_BACKGROUND=NONE
typeset -g POWERLEVEL9K_DIR_SHORTENED_FOREGROUND=110
typeset -g POWERLEVEL9K_DIR_ANCHOR_FOREGROUND=117

# Git segment
typeset -g POWERLEVEL9K_VCS_CLEAN_FOREGROUND=70     # Soft green
typeset -g POWERLEVEL9K_VCS_MODIFIED_FOREGROUND=208 # Soft orange
typeset -g POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND=178
typeset -g POWERLEVEL9K_VCS_LOADING_FOREGROUND=244
typeset -g POWERLEVEL9K_VCS_GIT_ICON='\uF1D3 ' # 

# Status segment
typeset -g POWERLEVEL9K_STATUS_OK_FOREGROUND=70     # Green OK
typeset -g POWERLEVEL9K_STATUS_ERROR_FOREGROUND=204 # Red error

# Command execution time
typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND=244
typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_FORMAT='d h m s'

# Time segment
typeset -g POWERLEVEL9K_TIME_FOREGROUND=110
typeset -g POWERLEVEL9K_TIME_FORMAT='%D{%H:%M}'

# Background jobs
typeset -g POWERLEVEL9K_BACKGROUND_JOBS_FOREGROUND=178

# Directory shortening
typeset -g POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
typeset -g POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"

# Instant prompt
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
