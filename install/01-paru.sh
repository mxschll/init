sudo pacman -Syu --needed --noconfirm base-devel

git clone https://aur.archlinux.org/paru.git ~/Downloads/paru
cd ~/Downloads/paru
makepkg -si

# Cleanup
cd ~
rm -rf ~/Downloads/paru
