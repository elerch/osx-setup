# OS X Vagrant Setup

# Assumes: 
# + Homebrew has been installed correctly.
# + Homebrew-cask has been tapped and installed correctly.

# Virtualbox
###############################################################################
brew cask install virtualbox
# VM virtual hard disk images will be stored in ${HOME}/VirtualBox VMs/

# Vagrant
###############################################################################
brew cask install vagrant
# Vagrant environments are Virtualbox VMs, stored in ${HOME}/Virtualbox VMs/

# Boot 2 Docker
###############################################################################
brew install docker docker-machine

# Kitematic UI for managing docker containers
###############################################################################
brew cask install kitematic
