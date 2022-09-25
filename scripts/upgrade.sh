#!/bin/bash
echo "Upgrading"

echo "Configure apt"
sed -i 's/us.archive/old-releases/g' /etc/apt/sources.list
sed -i 's/security/old-releases/g' /etc/apt/sources.list
sed -i 's/precise-old-releases/precise/g' /etc/apt/sources.list

echo '* libraries/restart-without-asking boolean true' | sudo debconf-set-selections

# debconf-utils offers a way of defining answers to interactive prompts
apt-get update || exit 2
apt-get upgrade -y

apt-get install -y \
    libxt-dev \
    libxmu-dev \
    libxmu6

dpkg-reconfigure -f noninteractive grub-pc

yes | do-release-upgrade

yes | apt-get -q -y upgrade
apt-get autoremove -y
apt-get clean -y

echo "trusty32" > /etc/hostname
sed -i 's/precise/trusty/g' /etc/hosts

echo "Upgraded successfully"
