brew update
brew install openssl readline sqlite3 xz zlib
brew install pyenv
brew install pyenv-virtualenv

pyenv install 3.7.0
pyenv virtualenv 3.7.0 project_dev
