# Install dependencies for building Neovim
sudo pacman -Syu --noconfirm base-devel cmake unzip ninja tree-sitter curl

# Clone Neovim
git clone https://github.com/neovim/neovim ~/Downloads/neovim
cd ~/Downloads/neovim
git checkout stable

# Build
make CMAKE_BUILD_TYPE=RelWithDebInfo

# Install (no .deb on Arch, just use make install)
sudo make install
# cd build && cpack -G DEB && sudo dpkg -i nvim-linux64.deb

# Cleanup
cd ~
rm -rf ~/Downloads/neovim

