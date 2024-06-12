mkdir -p ~/.local/share/fonts

cd ~/Downloads
wget https://github.com/ryanoasis/nerd-fonts/releases/latest/download/CascadiaMono.zip
unzip CascadiaMono.zip -d CascadiaFont
cp CascadiaFont/*.ttf ~/.local/share/fonts

# Set Cascadia Mono as the default
gsettings set org.gnome.desktop.interface monospace-font-name 'CaskaydiaMono Nerd Font 10'

# Cleanup
rm -rf CascadiaMono.zip CascadiaFont
