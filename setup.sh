!#/bin/bash
set -e
sudo apt install -y git vim zsh curl exuberant-ctags tmux python3 zathura python3-pip
# ssh-keygen
mkdir -p ~/git
# git clone git@github.com:dylanjwolff/dotfiles.git ~/git/dotfiles
cp ~/git/dotfiles/.tmux.conf ~
cp ~/git/dotfiles/.vimrc ~
cp ~/git/dotfiles/.zshrc ~

# sudo add-apt-repository ppa:regolith-linux/release
# sudo apt install regolith-desktop-standard -y

curl -L git.io/antigen > ~/antigen.zsh

# git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

chsh -s $(which zsh)

sudo chmod a+w /etc/default/keyboard
cat /etc/default/keyboard | sed 's/XKBOPTIONS=""/XKBOPTIONS="caps:swapescape"/g' > /etc/default/keyboard
sudo chmod gu-w /etc/default/keyboard

git config --global user.email "wolffdy0@gmail.com"
git config --global user.name "Dylan Wolff"
git config --global core.editor "vim"
