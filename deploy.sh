read -p "Do you confirm tools repo is stored in ~/tools? (yes/no) " choice  
if [ $choice == "yes" ]
then
  cp ~/tools/zshrc ~/.zshrc
  cp ~/tools/bashrc ~/.bashrc
  cp ~/tools/bash_profile ~/.bash_profile
  cp ~/tools/vimrc ~/.vimrc
  mkdir -p ~/.vim/colors/
  cp ~/tools/colors/Tomorrow-Night.vim ~/.vim/colors/
  cd ~ && git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  vim +PluginInstall +qall
else
  echo "Nothin' made."
fi
