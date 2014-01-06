#!/bin/bash

git clone https://github.com/swenson/smc-bootstrap .smc-bootstrap
cat .smc-bootstrap/bashrc >> .bashrc

# setup ssh keys
cp .smc-bootstrap/ssh/id_dsa* .ssh/

# git
git config --global user.name "Christopher Swenson"
git config --global user.email chris@caswenson.com

source ~/.bashrc
