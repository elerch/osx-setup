# OS X Homebrew (Package Manager) Setup

##############################################################################################################
### XCode Command Line Tools
#      thx  https://github.com/alrra/dotfiles/blob/c2da74cc333/os/os_x/install_applications.sh#L39

if [ $(xcode-select -p &> /dev/null; printf $?) -ne 0 ]; then
    xcode-select --install &> /dev/null
    # Wait until the XCode Command Line Tools are installed
    while [ $(xcode-select -p &> /dev/null; printf $?) -ne 0 ]; do
        sleep 5
    done
	xcode-select -p &> /dev/null
	if [ $? -eq 0 ]; then
        # Prompt user to agree to the terms of the Xcode license
        # https://github.com/alrra/dotfiles/issues/10
       sudo xcodebuild -license
   fi
fi

# Install latest Homebrew release
###############################################################################
# Homebrew placed under '/usr/local' so package installs don't require sudo.
# Individual brew packages (kegs) isolated in their own directory under 
# '/usr/local/Cellar'
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Symlinks to brew package executables located in '/usr/local/bin'. Add this
# location early in the PATH to prefer brew packages over system defaults.
echo -e "\n# Add path to homebrew bin." >> ${HOME}/.bash_profile
echo "PATH=/usr/local/bin:\$PATH" >> ${HOME}/.bash_profile
# brew tap                 # list tapped repositories (taps found in '/usr/local/Library/Taps')
# brew tap/untap tap-name  # additional taps provide more formulas.
brew update              # brew makes '/usr/local' a DVCS repo. Update it.
# brew search partial-name
# brew install/uninstall/upgrade package-name    # manage a brew Keg.
# brew list                # list installed brew packages.

# Install GNU core utilities (those that come with OS X are outdated)
brew install coreutils gawk gnutls gnu-getopt
brew install findutils gnu-sed gnu-tar gnu-indent --with-default-names

# Install Bash 4
brew install bash

# Install more recent versions of some OS X tools
brew tap homebrew/dupes
brew install homebrew/dupes/grep

echo 'PATH=$(brew --prefix coreutils)/libexec/gnubin:$PATH' >> ${HOME}/.bash_profile

echo -e "\n# Add homebrew tab completion to bash." >> ${HOME}/.bashrc
echo "source `brew --repository`/Library/Contributions/brew_bash_completion.sh" >> ${HOME}/.bashrc


