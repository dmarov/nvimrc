choco install git -y
choco install python -y
#choco install python2 -y
choco install yarn -y
choco install nodejs -y
choco install neovim -y
choco install pip -y --allow-empty-checksums

#pip2.exe install neovim
pip3 install neovim
pip3 install --user pynvim
yarn global add neovim

# create folders
New-Item -ItemType Directory -Path "~/AppData/Local/nvim/autoload" -Force
New-Item -ItemType Directory -Path "~/AppData/Local/nvim/plugged" -Force
New-Item -ItemType Directory -Path "~/AppData/Local/nvim/colors" -Force

# install plug
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" -OutFile "$home/AppData/Local/nvim/autoload/plug.vim"

# install config
New-Item -ItemType SymbolicLink -Path "$home/AppData/Local/nvim/init.vim" -Target "$pwd/init-win.vim" -Force
New-Item -ItemType SymbolicLink -Path "$home/AppData/Local/nvim/ginit.vim" -Target "$pwd/ginit.vim" -Force

cd ~

nvim -c PlugUpgrade -c PlugInstall -c PlugUpdate -c q -c q
nvim -c UpdateRemotePlugins -c q -c q
