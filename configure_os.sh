# Install utillities
sudo apt-get update && sudo apt-get install \
    git curl \
    tmux vim zsh \
    python3 python3-pip

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# Copy predefined config
mv oh-my-zsh.conf ~/.zshrc

# Install awesome-vim
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

# Install powerline fonts
git clone --depth=1 https://github.com/powerline/fonts.git ~/.powerline_fonts
sh ~/.powerline_fonts/install.sh && rm -rf ~/.powerline_fonts

# Copy tmux config
cp tmux.conf ~/.tmux.conf

# Copy ip-up conf
sudo cp ip-up.conf /etc/ppp/ip-up
