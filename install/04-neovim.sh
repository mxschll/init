git clone https://github.com/neovim/neovim ~/Downloads/neovim
cd ~/Downloads/neovim
git checkout stable
make CMAKE_BUILD_TYPE=RelWithDebInfo
cd build && cpack -G DEB && sudo dpkg -i nvim-linux64.deb

# Config: Clone nvim kickstart config
git clone https://github.com/mxschll/kickstart.nvim.git ~/.config/nvim

# Cleanup
cd ~
rm -rf ~/Downloads/neovim

