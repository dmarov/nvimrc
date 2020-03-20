choco install git -y
choco install python3 -y
#choco install python2 -y
choco install yarn -y
choco install nodejs -y
choco install neovim -y
choco install pip -y --allow-empty-checksums
choco install curl -y

#pip2.exe install neovim
pip3.exe install neovim
yarn global add neovim

# create folders
mkdir "~/AppData/Local/nvim/autoload"
mkdir "~/AppData/Local/nvim/plugged"
mkdir "~/AppData/Local/nvim/colors"

# install plug
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" -OutFile "$home/AppData/Local/nvim/autoload/plug.vim"

# install config
New-Item -ItemType SymbolicLink -Path "$home/AppData/Local/nvim/init.vim" -Target "$pwd/init.vim"
New-Item -ItemType SymbolicLink -Path "$home/AppData/Local/nvim/ginit.vim" -Target "$pwd/ginit.vim"

cd ~

nvim -c PlugUpgrade -c PlugInstall -c PlugUpdate -c q -c q
nvim -c UpdateRemotePlugins -c q -c q
