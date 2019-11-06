#/bin/sh

# install nvim
sudo pt-get update
sudo apt-get install neovim
# replace vim by nvim
echo "alias vim=\"nvim\"" >> ~/.profile
echo "alias vi=\"nvim\"" >> ~/.profile
echo "alias oldvim=\"vim\"" >> ~/.profile
source ~/.profile
# install vim-plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# copy config file
cp -R .config ~
# install vim plugins
nvim +PlugInstall +GoInstallBinaries +qa
echo 'install finished!'
