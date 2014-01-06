#!/bin/bash

git clone https://github.com/swenson/smc-bootstrap .smc-bootstrap
cat .smc-bootstrap/bashrc >> .bashrc

# setup ssh keys
cp .smc-boostrap/ssh/id_dsa* .ssh/

# install go
wget https://go.googlecode.com/files/go1.2.src.tar.gz
tar xvzf go1.2.src.tar.gz

pushd go/src
./all.bash
popd
