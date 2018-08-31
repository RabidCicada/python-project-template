#pyenv deps
sudo yum -y install xz xz-devel git gcc zlib-devel bzip2 bzip2-devel readline-devel sqlite sqlite-devel openssl-devel tk-devel libffi-devel
sudo yum -y install python-pip
sudo yum -y groupinstall "Development Tools"

./install_and_configure_pyenv.sh
