
<br>

# Dotfiles

This repository contains my personal shell configuration files. Its purpose is to track my dotfiles so that they can be versioned, backed-up,
and deployed to new any machines if necessary.

<br>

## Files

`bash_settings.sh` ~  
- Configuration file used for the Bash and ZSH shells.
- It includes PATH settings, aliases, and prompt configurations.

`git-prompt.sh` ~ 
- File which loads the Git prompt functionality required to display the 
repository status in the shell prompt.

`install.sh` ~
- The installation script which automatically links the configuration files
together into the user's shell environment.

<br>

## Installation & Use

Clone the repository and run:

```bash
$ chmod +x install.sh
$ ./install.ch
$ source ~/.bashrc
```



