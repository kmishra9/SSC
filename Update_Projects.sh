#!/bin/bash

echo "Updating your Cloud 9 Workspace"
cd ~/workspace
git pull

echo "Updating Project 0 - RPSå"
cd ~/workspace/RPS
cp ./starter_RPS.py ./temp_copy
git reset --hard
git pull
mv ./temp_copy ./starter_RPS.py

echo "Updating Project 1 - 2048"
cd ~/workspace/2048-Starter
cp ./starter_2048.py ./temp_copy
git reset --hard
git pull
mv ./temp_copy ./starter_2048.py

echo "Updating Project 2 - RPS.ai"
cd ~/workspace/AI-Extensions
cp ./agents.py ./temp_copy
git reset --hard
git pull
mv ./temp_copy ./agents.py

echo "Updating Project 3 - Hog"
cd ~/workspace/Hog
git pull

echo "Resetting all permissions back to users"
sudo chown -R ubuntu *
