# OS X Editors Setup

# Assumes: 
# + Homebrew has been installed correctly.
# + Homebrew-cask has been tapped and installed correctly.


# Install Sublime Text 3
###############################################################################
#brew cask install sublime-text
brew tap caskroom/versions
brew cask install sublime-text3

# Make 'subl' a command line shortcut for Sublime Text 2.
ln -s "/opt/homebrew-cask/Caskroom/sublime-text/2.0.1/Sublime Text 2.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl

# Install Vim
###############################################################################
brew install vim

# Install Emacs
###############################################################################
brew install emacs
