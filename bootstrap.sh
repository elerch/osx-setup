# OS X Setup

# Assumes: 
# + GCC installed via XCode comamnd line tools (https://connect.apple.com)

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

bash ${DIR}/scripts/homebrew.sh
bash ${DIR}/scripts/homebrew-cask.sh
bash ${DIR}/scripts/essential.sh

# Development Software/Tools
bash ${DIR}/scripts/editor.sh
bash ${DIR}/scripts/shell.sh
bash ${DIR}/scripts/git.sh
bash ${DIR}/scripts/ide.sh
bash ${DIR}/scripts/browser.sh
bash ${DIR}/scripts/fonts.sh

# Programming Environments
bash ${DIR}/scripts/python.sh
#bash ${DIR}/scripts/python-extra.sh
bash ${DIR}/scripts/golang.sh
bash ${DIR}/scripts/node.sh
#bash ${DIR}/scripts/scala.sh
#bash ${DIR}/scripts/ruby.sh
bash ${DIR}/scripts/dotnet.sh

# File System
#bash ${DIR}/scripts/dropbox.sh

# Virtualization
bash ${DIR}/scripts/virtualization.sh

# Extras
bash ${DIR}/scripts/extra.sh

# AWS
bash ${DIR}/scripts/aws.sh

