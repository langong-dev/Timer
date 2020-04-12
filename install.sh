#!/bin/bash

cd ~/
# 1. Download
git clone 'https://github.com/langonginc/Timer.git'

# 2. Setting
al="alias timer='bash ~/Timer/timer.sh'"
echo $al >> ~/.bashrc
