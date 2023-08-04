#!/bin/bash
set -e

echo "Downloading from github..."
git clone https://github.com/TheMediocritist/Sharp-Memory-LCD-Kernel-Driver sharp || { echo "Error: Failed to clone repository."; exit 1; }
cd sharp
make || { echo "Error: Failed to compile."; exit 1; }
sudo make modules_install || { echo "Error: Failed to install driver."; exit 1; }
sudo reboot
