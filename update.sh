#!/bin/bash

echo "Updating pkg..."
pkg update && pkg upgrade

echo "Updating apt..."
apt update && apt upgrade

echo "Autoremoving and cleaning..."
apt autoremove && apt autoclean

echo "Done..."
