#!/bin/sh
# this one has to be installed to get the repo
#apt-get install git

# TODO list:
# - Setup indicator-* to start on startup
# - ipython version?
# - setup symlinks for bashrc and bash_aliases
# - install google chrome
# - install spotify client
echo "Installing terminator, vim, meld, indicator-multiload and -cpufreq"
sudo apt-get install terminator vim meld indicator-multiload indicator-cpufreq p7zip-full -y
echo "Installing Vundle (package manager for vim)"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vimCloning into '/home/riv-01176/.vim/bundle/Vundle.vim'
echo "Installing google chrome"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
echo "Installing spotify client"
sudo -E apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
sudo sh -c 'echo "deb http://repository.spotify.com stable non-free" > /etc/apt/sources.list.d/spotify.list'
sudo apt-get update; sudo apt-get install spotify-client -y
echo "Setup successful!"
echo "Please start vim and run \':PluginInstall\'"
