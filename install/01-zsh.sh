sudo apt-get install -y zsh

# Make zsh the default shell
echo "Change default shell to zsh"
chsh -s $(which zsh)

# Install Oh My Zsh
if [ ! -d ~/.oh-my-zsh ]; then
	curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh | bash
fi

# Config
[ -f ~/.zshrc ] && cp ~/.zshrc ~/.zshrc.bak
# Enable Oh My Zsh tmux plugin
sed -i "s/plugins=(git)/plugins=(git tmux)/" ~/.zshrc
# cp ~/.local/share/init/config/zsh/.zshrc ~/.zshrc

