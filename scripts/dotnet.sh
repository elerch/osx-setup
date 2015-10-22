# OS X .Net Setup

# Assumes: 
# + Homebrew has been installed correctly.
# + Homebrew-cask has been tapped and installed correctly.


# Install dotnet
###############################################################################
brew tap aspnet/dnx
brew install dnvm

mkdir -p ${HOME}/.dnx

# Set environment 
echo "source /usr/local/bin/dnvm.sh" >> ${HOME}/.bash_profile

. /usr/local/bin/dnvm.sh
dnvm upgrade -r coreclr

