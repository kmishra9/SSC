#!/bin/bash

echo "Updating your Cloud 9 Workspace"

#Known issue: resets OK tests too
cd ~/workspace/Assignments/a0
cp ./lab00.py ./temp_copy
cd ~/workspace/Assignments/a1
cp ./lab01.py ./temp_copy
cd ~/workspace/Assignments/a2
cp ./hw01.py ./temp_copy

cd ~/workspace
git reset --hard
git pull

cd ~/workspace/Assignments/a0
mv ./temp_copy ./lab00.py
cd ~/workspace/Assignments/a1
mv ./temp_copy ./lab01.py
cd ~/workspace/Assignments/a2
mv ./temp_copy ./hw01.py

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
