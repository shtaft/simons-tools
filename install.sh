CODE_DIR="~/code"

mkdir -p $CODE_DIR

# Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install homebrew/apache/ab
brew tap caskroom/cask
brew tap homebrew/services

brew install Caskroom/cask/java

brew install python
brew install python@2
pip install --upgrade pip

# Python utils
sudo pip install virtualenv virtualenvwrapper soundscrape

# ZSH
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Config
ln -s bash_profile ~/.bash_profile
ln -s editorconfig ~/.editorconfig
cp gitconfig ~/.gitconfig
cp sshconfig ~/.ssh/config
echo "source ~/.bash_profile" >> ~/.zshrc

# Apps
brew cask install --appdir=/Applications/ google-chrome
brew cask install --appdir=/Applications/ iterm2
brew cask install --appdir=/Applications/ sourcetree
