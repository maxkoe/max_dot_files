#!/bin/bash



mv ~/.config/karabiner/karabiner.json ~/.config/karabiner/MEDIUM
mv ~/.config/karabiner/ALT_KARABINER.json ~/.config/karabiner/karabiner.json
mv ~/.config/karabiner/MEDIUM ~/.config/karabiner/ALT_KARABINER.json

less ~/.config/karabiner/karabiner.json | grep comment

open -a Karabiner-Elements
open -a iterm
