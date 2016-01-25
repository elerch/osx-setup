# OS X Shell Environment Setup

# Assumes: 
# + Homebrew has been installed correctly.
# + Homebrew-cask has been tapped and installed correctly.


# Install iTerm2
###############################################################################
brew cask install iterm2

# Environment Customizations
###############################################################################
echo -e "\n# Set the default text editor." >> ${HOME}/.bash_profile
echo "export EDITOR='subl -w'" >> ${HOME}/.bash_profile

# Bash Customizations
###############################################################################
brew install git bash-completion
# Installs bash completion scripts to /usr/local/etc/bash_completion.d/

brew install zsh # must include /usr/local/bin/zsh to /etc/shells
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

