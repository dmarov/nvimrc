choco install git -y
choco install python3 -y
choco install python2 -y
choco install yarn -y
choco install nodejs -y
choco install neovim -y
choco install pip -y --allow-empty-checksums
choco install curl -y

pip install neovim
yarn global add neovim

:: create folders
mkdir "~/AppData/Local/nvim/autoload"
mkdir "~/AppData/Local/nvim/plugged"
mkdir "~/AppData/Local/nvim/colors"

:: install plug
curl -fLo "~/AppData/Local/nvim/autoload/plug.vim"^
 https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

:: install config
mklink /D "~/AppData/Local/nvim/init.vim" "$pwd/init.vim"
mklink /D "~/AppData/Local/nvim/ginit.vim" "$pwd/ginit.vim"

cd ~

nvim -c PlugUpgrade -c PlugInstall -c PlugUpdate -c q -c q
nvim -c UpdateRemotePlugins -c q -c q
