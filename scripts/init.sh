#!/bin/bash

# apt update
# apt install -y curl
# curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
# apt install -y nodejs
# ln -s /workdir/api/package.json /workdir/package.json
# export PATH=$PATH:/workdir/node_modules/.bin/
ln -s /workdir/models/*.py /cntk/Examples/Image/Detection/
mkdir -p /workdir/temp/inputs /workdir/temp/outputs
# cd /workdir/ && npm i
# cd /workdir/api/ && npm run start-dev &
# npm i -g forever
source /cntk/activate-cntk && pip install -r /workdir/flaskapi/requirements.txt
ln -s /workdir/flaskapi/*.py /cntk/Examples/Image/Detection/
# source /cntk/activate-cntk && forever start -c python /cntk/Examples/Image/Detection/run_app.py &
source /cntk/activate-cntk && python /cntk/Examples/Image/Detection/run_app.py &
bash
