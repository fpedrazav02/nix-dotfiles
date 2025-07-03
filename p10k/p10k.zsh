# ~/.p10k.zsh
# Powerlevel10k configuration for dark background (black / dark blue)

# Prompt layout
typeset -g POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
  os_icon         # e.g., Linux, Mac, Windows icon
  dir             # Current directory
  vcs             # Git status
)

typeset -g POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(
  status          # Exit status of last command
  command_execution_time
  time
)

# General prompt options
typeset -g POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
typeset -g POWERLEVEL9K_PROMPT_ON_NEWLINE=true
typeset -g POWERLEVEL9K_PROMPT_EOL_MARK=""

# Colors and icons
typeset -g POWERLEVEL9K_OS_ICON_FOREGROUND=33           # Blue icon
typeset -g POWERLEVEL9K_DIR_FOREGROUND=110              # Soft cyan
typeset -g POWERLEVEL9K_DIR_BACKGROUND=NONE
typeset -g POWERLEVEL9K_DIR_SHORTENED_FOREGROUND=109    # Lighter cyan
typeset -g POWERLEVEL9K_DIR_ANCHOR_FOREGROUND=39        # Blue anchor
typeset -g POWERLEVEL9K_VCS_CLEAN_FOREGROUND=70         # Green when clean
typeset -g POWERLEVEL9K_VCS_MODIFIED_FOREGROUND=208     # Orange when dirty
typeset -g POWERLEVEL9K_STATUS_ERROR_FOREGROUND=196     # Red error
typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND=242 # Grey
typeset -g POWERLEVEL9K_TIME_FOREGROUND=66              # Light blue
typeset -g POWERLEVEL9K_TIME_FORMAT='%D{%H:%M:%S}'

# Prompt character
typeset -g POWERLEVEL9K_PROMPT_CHAR_OK_VIVIS_FOREGROUND=76
typeset -g POWERLEVEL9K_PROMPT_CHAR_ERROR_VIVIS_FOREGROUND=196
typeset -g POWERLEVEL9K_PROMPT_CHAR_OK_VIVIS_CONTENT='❯'
typeset -g POWERLEVEL9K_PROMPT_CHAR_ERROR_VIVIS_CONTENT='❯'

# Git icons
typeset -g POWERLEVEL9K_VCS_GIT_ICON='\uF1D3 ' # 

# Directory shortening
typeset -g POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
typeset -g POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"

# Enable instant prompt for faster loading
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
