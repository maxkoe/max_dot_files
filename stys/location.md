## Where to put these Files

### macOS

under macOS you put them simply under
    ~/Library/texmf/tex/latex/

### Suse Linux

In der Uni (TU Berlin) wird ein distribuiertes Linuxsystem genutzt. 
Das Wurzelverzeichnis findet man Laut [http://tex.stackexchange.com/questions/1137/where-do-i-place-my-own-sty-or-cls-files-to-make-them-available-to-all-my-te](LaTeX-StackExchange) mit dem Kommando
    kpsewhich -var-value=TEXMFHOME

Das ergab für mich ebenso 
    ~/Library/texmf/

Hier ist es ebenso wichtig wieder 
    ~/Library/texmf/tex/latex/
draus zu machen. 
