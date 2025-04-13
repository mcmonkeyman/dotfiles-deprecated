# [Deprecated] mcmonkeyman dotfiles

**UPDATED TO USE PRIVATE VERSION ON FEB 2024**

## about

Previously I used [yard](https://github.com/mcmonkeyman/dotfiles-old) but ported over to [holmon-dotfiles](https://github.com/holman/dotfiles) in late 2017. See that link for detailed instructions.

## install

* Manually Install Xcode
* Run this:

```sh
git clone https://github.com/mcmonkeyman/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
make full_update
make limited_update
```
* Restart iterm2

## post-install

Manually:
- Follow [yadr instructions](https://github.com/skwp/dotfiles#wait-youre-not-done-do-this)
-- Install iTerm Solarized Colors
    YADR will install Solarized colorschemes into your iTerm. Go to Profiles => Colors => Load Presets to pick Solarized Dark.
-- Update Caps Key - > Esc
 System Settings - Modifier Keys - Remap Caps-Lock to Esc 
-- Set up a system wide hotkey for iTerm (Keys=>Hotkey)
Recommended Cmd-Escape, which is really Cmd-Capslock. 
-- In iTerm, uncheck "Native full screen windows" on General
This will give you fast full screen windows that are switchable without switching to spaces.

- Run `:PlugInstall` inside of vim
- Generate ssh key and add to github
	- https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/
	- https://github.com/settings/keys
- Setup lock on sleep: https://support.apple.com/kb/PH25376?locale=en_US 
- Setup python2 and python3
- Setup java8 https://gist.github.com/alChaCC/ddb11542c9e6b6683bad80d9ca858bc5
- Install:
  - Microsoft Programs
  - Jetbrains toolbox
  - [Docker for Mac](https://www.docker.com/docker-ma)
  - [privateinternetaccess](https://www.privateinternetaccess.com/installer/x/download_installer_osx)
- Install github mail filters in ./git/githubMailFilters.xml
