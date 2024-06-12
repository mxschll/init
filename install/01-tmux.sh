sudo apt install -y tmux

# Config 
[ -f ~/.tmux.conf ] && mv ~/.tmux.conf ~/.tmux.conf.bak
cp ~/.local/share/init/config/tmux/.tmux.conf ~/.tmux.conf

if [ -f ~/.zshrc ]; then
	sed -i '/source $ZSH\/oh-my-zsh.sh/i ZSH_TMUX_AUTOSTART=true\nZSH_TMUX_AUTOCONNECT=false\n' ~/.zshrc
fi

