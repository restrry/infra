#!/bin/bash

set -e

echo "> Installing Ruby"

# Install RVM
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -sSL https://get.rvm.io | bash -s stable

# Install Ruby dependencies
source ~/.rvm/scripts/rvm
rvm requirements

# Install Ruby 2.4.1
rvm install 2.4.1
rvm use 2.4.1 --default

# Install bundler
gem install bundler -V --no-ri --no-rdoc

echo "< End Ruby and Bundler Installation"