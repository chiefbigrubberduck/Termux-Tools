#!/data/data/termux.com/files/usr/bin/bash
echo -n "Do you want to update/upgrade? [y/N] " 
read -r yn

if [ "$yn" = "y" ] || [ "$yn" = "Y" ]; then
  echo "Updating pkg..."
  pkg update && pkg upgrade

  echo "Updating apt..."
  apt update && apt upgrade -y

  echo "Autoremoving and cleaning..."
  apt autoremove -y && apt autoclean

  echo "Done."
else
  echo "Aborted because of unknown issue"
fi
