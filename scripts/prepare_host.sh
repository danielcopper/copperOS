######################################################
# Install required software for the host
######################################################

echo "Preparing Host System for LFS"

echo "Becoming root"
sudo -i || exit 1

echo "Installing Required Packages"
apt install m4 gawk bison flex automake autoconf build-essential texinfo gparted libncurses5-dev libncursesw5-dev libtool
echo "Package installation complete."

echo "Fixing symbolic links"
ln /bin/bash /bin/sh
