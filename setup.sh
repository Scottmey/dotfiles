CWD="$PWD"

ln -sf $CWD/git/.gitconfig ~/.gitconfig
ln -sf $CWD/git/.gitignore_global ~/.gitignore_global

ln -sf $CWD/emacs/.emacs.d ~/.emacs.d

ln -sf $CWD/vim/.vim ~/.vim
ln -sf $CWD/vim/.vimrc ~/.vimrc

ln -sf $CWD/zsh/.zshrc ~/.zshrc

# disable shell login message
touch ~/.hushlogin
