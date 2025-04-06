# dotfiles

Repo for my dotfiles.

## How to install

### 1. Clone this Repo

If not installed, MacOS ask you to install the Xcode Command Line Developer Tools

```
git clone https://github.com/JoJoProgramsThings/dotfiles.git
```

### 2. Install [Homebrew](https://brew.sh)

Homebrew is a package manager for macOS that makes installing and managing software much easier.

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Follow the instructions at the end of the installation to complete the process.

### 3. Install Packages from Brew 

Once Homebrew is installed, navigate to the dotfiles directory and install the required packages for the best Zsh experience:

```
xargs brew install < my_brews.txt
```

### 4. Install a better terminal

install your favourite terminal. Mine is iTerm2

```
brew install --cask iterm2
```

### 4. Configure iTerm2

#### Import settings
1. Open the **iTerm2 settings tap**
2. Go to **Gerneral > Settings**
3. Under **Backup & restore** click on "Import All Settings and Data" and seleced the iTerm2Settings.itermexport in the iTerm2 folder

#### Make iTerm2 the default Terminal

Set iTerm2 as the default terminal (since the built-in macOS Terminal lacks some icon and color features).  
Go to **iTerm2** at the menu bar and click on **Make iTerm2 Default Term**.

### 5. Run setup.sh

After everything is installed, run this script to set up your environment:
```
./setup.sh
``` 
This script links the necessary zsh files to your home directory using `stow`.