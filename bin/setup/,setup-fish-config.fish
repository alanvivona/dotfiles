sudo chsh -s /usr/bin/fish
mkdir -p ~/.config/fish

# Fisher
set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
fish -c fisher

# Fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --all
fisher add jethrokuan/fzf

# Grc : Generic colourizer
sudo apt -y install grc; and fisher add omf/grc

# Python extention: this adds:
# - pyclean  # recursively clean .pyc and .pyo
# - pybeautifyjson '{"foo": "lorem", "bar": "ipsum"}'    # beautify a JSON string
# - pybeautifyjson (curl -s http://api.example.com/foo)  # beautify a JSON output
# - curl -s http://api.example.com/foo | pybeautifyjson  # beautify a JSON output
# - pyhttp - Start SimpleHTTPServer, optional argument for port number
# - pysmtp - Start SMTP debugging server, option port argument. Default is 1025
fisher add omf/python