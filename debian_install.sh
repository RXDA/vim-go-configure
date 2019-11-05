#/bin/sh

# install nvim
apt-get install neovim
# replace vim by nvim
echo "alias vim=\"nvim\"" >> ~/.profile
echo "alias vi=\"nvim\"" >> ~/.profile
echo "alias oldvim=\"vim\"" >> ~/.profile
source ~/.zshrc
# install vim-plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# copy config file
cp -R .config ~
# install vim plugins
vim +PlugInstall +GoInstallBinaries +qa
echo 'install finished!'
