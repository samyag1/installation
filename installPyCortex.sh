#!/bin/bash

$tempDir = pwd
cd /opt
sudo apt-get install git -y
sudo clone https://github.com/gallantlab/pycortex
sudo cd pycortex
sudo git checkout glrework-merged
sudo python setup.py develop
sudo apt-get install python-dev python-numpy python-scipy python-matplotlib python-h5py python-nibabel python-lxml python-shapely python-html5lib inkscape -y
cd $tempDir
