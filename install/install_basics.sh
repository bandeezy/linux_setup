#!/bin/sh
# this one has to be installed to get the repo
#apt-get install git

# TODO list:
# - Setup indicator-* to start on startup
# - ipython version?
# - setup symlinks for bashrc and bash_aliases
# - install google chrome
# - install spotify client
#echo "Installing terminator, vim, meld, indicator-multiload and -cpufreq"
#apt-get install terminator vim meld indicator-multiload indicator-cpufreq -y
#echo "Installing google chrome"
#wget https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add - && sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list'
#sudo apt-get update; sudo apt-get install google-chrome-stable
echo "Installing spotify client"
sudo -E apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
sudo sh -c 'echo "deb http://repository.spotify.com stable non-free" > /etc/apt/sources.list.d/spotify.list'
sudo apt-get update; sudo apt-get install spotify-client
