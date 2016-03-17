# OS X Homebrew-Cask Tap Setup

# Assumes: 
# + Homebrew has been installed correctly.

# Install latest Homebrew-cask(brew-cask) release (0.14.0 as of July 6, 2013)
###############################################################################
# brew-cask brew package placed in its own directory 'brew-cask' under 
# '/usr/local/'
# brew-cask Casks (packages) stored in /opt/homebrew-cask/Caskroom and they are
# symlinked to ${HOME}/Applications as *.app executables.
brew tap caskroom/homebrew-cask  # adds tap to '/usr/local/Library/Taps'
brew install brew-cask         # install the brew Keg.
# brew upgrade brew-cask       # upgrade the brew-cask Keg from the phinze/homebrew-cask tap.
# brew cask search partial-name
# brew cask install/uninstall/upgrade cask-name  # manage a brew-cask Cask (analogous to a brew Keg).
# brew cask list               # list installed Casks (packages).


