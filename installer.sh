########################################################################################################
# software installation, include
# tmux 
# fish shell
# python3
# gdebi
apt-get install -y wget curl tmux fish python3 python3-dev python3-pip gdebi
#
# hyper.is 
sudo wget -c https://releases.hyper.is/download/deb -O hyper-latest.deb
gdebi hyper-latest.deb
rm -f hyper-latest.deb
# nerd font
apt-get install fonts-hack-ttf
#wget -c https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hack.zip -O Hack.zip
#unzip Hack.zip
#cp ttf/* ~/.local/share/fonts/
#fc-cache -f -v
# oh-my-fish
curl -L https://get.oh-my.fish | fish
omf install bobthefish
#
########################################################################################################
# soft link configuration file
#
#
ln -snf ~/dotfiles/tmux/.tmux ~/.tmux.conf 
ln -snf ~/dotfiles/vim/.vimrc ~/.vimrc 
ln -snf ~/dotfiles/vim ~/.vim
ln -snf ~/.vim/.vimrc ~/.vimrc
ln -snf ~/dotfiles/hyper/.hyper.js ~/.hyper.js
# renove top-level configuration file
rm -rf ~/.config/Hyper/.hyper.js
# fish configuration
ln -snf ~/config/fish/config.fish ~/.config/fish/config.fish
ln -snf ~/config/fish/fish_variables ~/.config/fish/fish_variables
ln -snf ~/config/fish/functions/* ~/.config/fish/functions/ 
#
#
########################################################################################################
# NOTE
# tmux
#apt-get install tmux
#cp tmux.conf ~/.tmux.conf
#git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
# powerline
#pip3 install powerline-status
#~/.local/lib/python3.8/site-packages/powerline
#~/.local/lib/python3.8/site-packages/powerline/bindings/tmux/powerline.conf
#sudo apt-get install fonts-powerline
# oh-my-fish
#curl -L https://get.oh-my.fish | fish