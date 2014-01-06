#!/bin/bash

git clone https://github.com/swenson/smc-bootstrap .smc-bootstrap
cat .smc-bootstrap/bashrc >> .bashrc

# setup ssh keys
cp .smc-bootstrap/ssh/id_dsa* .ssh/
chmod go-rwx .ssh/id_dsa*

# git
git config --global user.name "Christopher Swenson"
git config --global user.email chris@caswenson.com

source ~/.bashrc
