#!/bin/bash

set -xv

python3 --version
python --version

which python
which python3
which pip
which pip3
which curl

tar -jxvf ./data.tar

pip3 install -r ./requirements.txt

curl -kI https://www.google.com/

ls -la

pip3 freeze