#!/bin/sh 

# requirements
sudo pkg install -y \
    curl \
    git \
    npm \
    node \
    xclip \
    neovim \
    coreutils \
    python3 \
    py35-setuptools \
    libexo \
    liberation-fonts-ttf \
    global \
    ctags \
    rubygem-gems \
    the_silver_searcher \

sudo yarn global add postcss-cli autoprefixer
sudo easy_install-3.5 pip
sudo pip install neovim
sudo pip install neovim-remote
sudo gem install neovim

# create folders
mkdir -p ~/.config/nvim/colors

# install plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# install config
ln -sf `pwd`/init.vim ~/.config/nvim/init.vim
ln -sf `pwd`/ginit.vim ~/.config/nvim/ginit.vim

cd ~

nvim -c PlugUpgrade -c PlugInstall -c PlugUpdate -c q -c q
nvim -c UpdateRemotePlugins -c q -c q

echo done!
