#!/bin/bash



mv ~/.karabiner.d/configuration/karabiner.json ~/.karabiner.d/configuration/MEDIUM
mv ~/.karabiner.d/configuration/ALT_KARABINER.json ~/.karabiner.d/configuration/karabiner.json
mv ~/.karabiner.d/configuration/MEDIUM ~/.karabiner.d/configuration/ALT_KARABINER.json

less ~/.karabiner.d/configuration/karabiner.json | grep comment

open -a Karabiner-Elements
open -a iterm
