#!/bin/bash
eval "sudo apt-get purge ruby -y"
#eval "sudo aptitude purge ruby1.9.1 -y"
eval "sudo apt-get update"
eval "sudo apt-get install autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm3 libgdbm-dev -y"
eval "sudo apt-get install git -y"

eval 'git clone https://github.com/rbenv/rbenv.git ~/.rbenv'
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.profile
echo 'eval "$(rbenv init -)"' >> ~/.profile

echo 'export PATH="$HOME/.rbenv/bin:$PATH"'
echo 'eval "$(rbenv init -)"'

eval 'git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build'
eval '~/.rbenv/bin/rbenv install 2.5.1'
eval '~/.rbenv/bin/rbenv global 2.5.1'
eval '~/.rbenv/bin/rbenv local 2.5.1'
eval '~/.rbenv/bin/rbenv rehash'

echo 'gem: --no-document' > ~/.gemrc
eval "~/.rbenv/versions/2.5.1/bin/gem install bundler"
eval "~/.rbenv/versions/2.5.1/bin/gem install rails -v 5.2.0"
eval "~/.rbenv/bin/rbenv rehash"

#eval "sudo apt-get install default-jre -y"
eval "sudo apt-get install nodejs -y"

eval "gem install rails"
eval "sudo apt-get install postgresql-client libpq5 libpq-dev"
eval "gem install pg"
eval "sudo apt-get install bundler -y"

eval "sudo apt-get install git"

echo "git config --global credential.helper cache --timeout=10800" >> ~/.profile
echo "git config --global user.email 'greghorne@hotmail.com'" >> ~/.profile
echo "git config --global user.name 'Greg Horne'" >> ~/.profile

echo ""
echo ""
echo "install finished..."
echo "type: source ~/.profile"


