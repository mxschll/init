sudo apt install -y tmux

# Config 
[ -f "~/.tmux.conf" ] && mv ~/.tmux.conf ~/.tmux.conf.bak
cp ~/.local/share/init/config/tmux/.tmux.conf ~/.tmux.conf
