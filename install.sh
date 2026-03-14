

#!/bin/bash

# Dotfiles install script
# This script links the configuration scripts to the user's shell environment.
DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"
echo "Installing dotfiles from: $DOTFILES_DIR"

touch "$HOME/.bashrc"


# Append script to ~/.bashrc so it launches when the shell launches.
# Only do this if it isn't already in bashrc
if ! grep -q "bash_settings\.sh" "$HOME/.bashrc"
then
	echo "Appending bash_settings.sh to ~/.bashrc..."
	echo ". $DOTFILES_DIR/bash_settings.sh" >> "$HOME/.bashrc"
fi


#Setup basic git prompt
if ! grep -q "git-prompt\.sh" "$HOME/.bashrc"
then
	echo "Appending git-prompt to ~/.bashrc..."
	echo ". $DOTFILES_DIR/git-prompt.sh" >> "$HOME/.bashrc"
fi


#Configure zsh shell

if [ ! -f "$HOME/.zprofile" ]
then
	ln -s "$HOME/.bashrc" "$HOME/.zprofile"
fi


echo "Bash settings complete"
echo "Run: source ~/.bashrc"



