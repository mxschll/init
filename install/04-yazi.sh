# Setup the latest stable Rust toolchain via rustup
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

rustup update

# Install the latest Git version of yazi
cargo install --locked --git https://github.com/sxyazi/yazi.git yazi-fm yazi-cli

# Config
cp -r ~/.local/share/init/config/yazi ~/.config

