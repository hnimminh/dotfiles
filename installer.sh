########################################################################################################
# software installation, include
# tmux 
# fish shell
# python3
# gdebi
# net-tools
sudo apt-get install -y wget curl tmux fish python3 python3-dev python3-pip gdebi net-tools
#
# hyper.is 
sudo wget -c https://releases.hyper.is/download/deb -O hyper-latest.deb
sudo gdebi -y hyper-latest.deb
sudo rm -f hyper-latest.deb
# nerd font
sudo apt-get install -y fonts-hack-ttf
sudo wget -c https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hack.zip -O Hack.zip
sudo unzip Hack.zip 
sudo cp *.ttf ~/.local/share/fonts/
sudo rm -f *.ttf Hack.zip
sudo fc-cache -f -v
# oh-my-fish
curl -L https://get.oh-my.fish > install.fish
echo 'omf install bobthefish' >> install.fish
fish install.fish -y
rm -f install.fish
#
########################################################################################################
# soft link configuration file
#
#
ln -snf ~/dotfiles/tmux/.tmux.conf ~/.tmux.conf 
ln -snf ~/dotfiles/vim/.vimrc ~/.vimrc 
ln -snf ~/dotfiles/vim ~/.vim
ln -snf ~/.vim/.vimrc ~/.vimrc
ln -snf ~/dotfiles/hyper/.hyper.js ~/.hyper.js
# renove top-level configuration file
sudo rm -rf ~/.config/Hyper/.hyper.js
# fish configuration
ln -snf ~/dotfiles/config/fish/config.fish ~/.config/fish/config.fish
ln -snf ~/dotfiles/config/fish/fish_variables ~/.config/fish/fish_variables
rm -rf ~/.config/fish/functions
ln -snf ~/dotfiles/config/fish/functions ~/.config/fish/functions
#
# bash
ln -s ~/dotfiles/config/bash/ash /usr/local/bin
#
########################################################################################################
