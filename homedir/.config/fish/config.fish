# ~/.config/fish/config.fish

# Remove greeting message
set fish_greeting

# Setting the PATH
# ~/bin : custom scripts
set -x -g PATH ~/bin ~/bin/setup ~/bin/utils $PATH

# Theme: green letters and grey comments and autocompletes
set -L
set -U fish_color_normal normal
set -U fish_color_command 00FF00
set -U fish_color_quote 44FF44
set -U fish_color_redirection 7BFF7B
set -U fish_color_end 7BFF7B
set -U fish_color_error A40000
set -U fish_color_param 30BE30
set -U fish_color_comment 777777
set -U fish_color_match --background=brblue
set -U fish_color_selection white --bold --background=brblack
set -U fish_color_search_match bryellow --background=brblack
set -U fish_color_history_current --bold
set -U fish_color_operator 00a6b2
set -U fish_color_escape 00a6b2
set -U fish_color_cwd green
set -U fish_color_cwd_root red
set -U fish_color_valid_path --underline
set -U fish_color_autosuggestion 777777
set -U fish_color_user brgreen
set -U fish_color_host normal
set -U fish_color_cancel -r
set -U fish_pager_color_completion normal
set -U fish_pager_color_description B3A06D yellow
set -U fish_pager_color_prefix white --bold --underline
set -U fish_pager_color_progress brwhite --background=cyan
