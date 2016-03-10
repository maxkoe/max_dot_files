#!/bin/bash
#

rm current_brew_list.md
brew list >> cbl_a.md
sed "s/^/-/" cbl_a.md >cbl_b.md
sed '1s/^/\
\
/' cbl_b.md >cbl_c.md

d=$(date +%d/%m/%Y)
sed "1s:^:current list of brew-installed packages (as of **$d**):" current_brew_list.md cbl_c.md >current_brew_list.md 
rm cbl_a.md cbl_b.md cbl_c.md
