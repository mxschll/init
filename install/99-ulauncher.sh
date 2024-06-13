sudo apt update && sudo apt install -y gnupg
gpg --keyserver keyserver.ubuntu.com --recv 0xfaf1020699503176
gpg --export 0xfaf1020699503176 | sudo tee /usr/share/keyrings/ulauncher-archive-keyring.gpg > /dev/null
echo "deb [signed-by=/usr/share/keyrings/ulauncher-archive-keyring.gpg] \
          http://ppa.launchpad.net/agornostal/ulauncher/ubuntu focal main" \
          | sudo tee /etc/apt/sources.list.d/ulauncher-jammy.list
sudo apt update && sudo apt install ulauncher

# Config
mkdir -p ~/.config/autostart/

cp ~/.local/share/init/config/ulauncher/ulauncher.desktop ~/.config/autostart/ulauncher.desktop
gtk-launch ulauncher.desktop >/dev/null 2>&1
sleep 2
cp ~/.local/share/init/config/ulauncher/ulauncher.json ~/.config/ulauncher/settings.json
