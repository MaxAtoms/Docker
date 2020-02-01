#!/bin/bash

# Check, whether a repository URL was given
if [ -z "$1" ];
then 
    echo "No URL was given. Please pass the URL to a package repository as parameter."
    exit 1
fi

# Make sure the system is up-to-date
sudo pacman -Syu --noconfirm

# Remove previous build files
rm -rf /home/archmakepkg/repo/*

# Get the package repository
git clone $1 /home/archmakepkg/repo

# Build the package
sudo -u nobody makepkg --syncdeps --rmdeps --noconfirm