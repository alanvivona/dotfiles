# ~/.config/fish/config.fish

# Remove greeting message
set fish_greeting

# Setting the PATH
# ~/bin : custom scripts
set -x PATH $PATH ~/bin

if not functions -q fisher
    echo '================================'
    echo 'Starting Fish first time config:'
    echo '================================'
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher

    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    ~/.fzf/install --all

    fisher add jethrokuan/fzf

    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
    ~/.tmux/plugins/tpm/bin/install_plugins
    ~/.tmux/plugins/tpm/tpm

    echo '================================'
    echo 'Finished Fish first time config!'
    echo '================================'
end