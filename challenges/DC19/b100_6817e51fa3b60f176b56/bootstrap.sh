
#! /usr/bin/env bash

WGET="/usr/bin/wget"

apt-get update

ASSET_DIR="/vagrant/assets"
HOME_DIR="/home/vagrant"
if ! cd "$HOME_DIR"; then
  echo "ERROR: Can't access working directory ($HOME_DIR)" >&2
  exit 1
fi

CHALLENGE_URL="https://github.com/theqlabs/ctf-challenges/raw/master/DEFCON-19/Binary/b100/b100_6817e51fa3b60f176b56"
CHALLENGE_FILE="b100_6817e51fa3b60f176b56"
if ! $WGET $CHALLENGE_URL; then
	echo "ERROR: Could not download challenge file"
	exit 1
else
	chown vagrant $HOME_DIR/$CHALLENGE_FILE
	chgrp vagrant $HOME_DIR/$CHALLENGE_FILE
	chmod +x $HOME_DIR/$CHALLENGE_FILE
fi

CHECKSEC_URL="http://www.trapkit.de/tools/checksec.sh"
CHECKSEC_FILE="/home/vagrant/checksec.sh"
if ! $WGET $CHECKSEC_URL; then
	echo "ERROR: Unable to download checksec.sh" >&2
	exit 1
else
	chown vagrant $CHECKSEC_FILE
	chgrp vagrant $CHECKSEC_FILE
	chmod +x $CHECKSEC_FILE
fi

#./checksec.sh --file $WORKING_DIR/$CHALLENGE_FILE

# Modify /etc/motd ... 
