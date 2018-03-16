# INSTALL SCRIPT FOR MAC

# install brew and cask
xcode-select --install
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install caskroom/cask/brew-cask

# setup prezto
zsh
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

chsh -s /bin/zsh

# install command line tools
brew cask install java8 
brew install brew install sbt@1
brew install httpie

# install various software
brew cask install evernote
brew cask install google-chrome
brew cask install postman
brew cask install iterm2
brew cask install 1password # check out 1password-cli
brew cask install slack
brew cask install intellij-idea-ce
brew cask install alfred
brew cask install docker
brew cask install dropbox
