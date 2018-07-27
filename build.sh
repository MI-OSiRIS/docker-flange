#!/bin/bash

echo "Building Periscope Container..."

echo "Setting up UNIS-RT..."
cd lace
sudo python3 setup.py develop
cd -
cd unisrt
sudo python3 setup.py develop
cd -

echo $(ls)

echo "Setting up Flange..."
cd Flange
sudo python3 setup.py develop
cd -

