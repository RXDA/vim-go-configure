#/bin/sh

# install nvim
brew install neovim
# replace vim by nvim
echo "alias vim=\"nvim\"" >> ~/.zshrc
echo "alias vi=\"nvim\"" >> ~/.zshrc
echo "alias oldvim=\"vim\"" >> ~/.zshrc
source ~/.zshrc
# install vim-plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# copy config file
cp -R .config ~
# install vim plugins
vim +PlugInstall +GoInstallBinaries +qa
echo 'install finished!'
