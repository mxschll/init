# Provides a way to pipe output to the cipboard
sudo apt install -y xclip

echo 'alias ccp="xclip -sel clip"' >> ~/.zshrc
