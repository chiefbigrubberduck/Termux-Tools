#!/bin/bash

echo -n "Do you want to update/upgrade? [y/N] "
read yesno

if [ "$yesno" = "y" ] || [ "$yesno" = "Y" ]; then 
  echo "Updating pkg..."

  pkg update && pkg upgrade

  echo "Updated pkg..."
  
  echo "Updating apt..."
  
  apt update && apt upgrade

  echo "Updated apt..."
  
  echo "Autoremoving and cleaning..."

  apt autoremove && apt autoclean

  echo "Done..."
else
  echo "Aborted because of unknown issue"
fi
