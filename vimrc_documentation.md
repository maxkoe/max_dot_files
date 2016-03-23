# [Vundle ![icon](github_icon.jpg)](https://github.com/VundleVim/Vundle.vim)

The most well-known plugin manager for vim

It requires the following basic skeleton for the `.vimrc`

```vim
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Further plugins with the syntax as specified as above (for syntax of different sources see Github)

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Put your non-Plugin stuff after this line
```

# Markdown Plugins & Configs

## [vim-instant-markdown ![icon](github_icon.jpg)](https://github.com/suan/vim-instant-markdown)
*See also [the plugin's VimAwesome page](http://vimawesome.com/plugin/instant-markdown-vim)*

A plugin to connect vim with your browser to have an automatic preview of the markdown file you're editting. It relies on [instant-markdown-d ![icon](github_icon.jpg)](https://github.com/suan/instant-markdown-d) which I altered to include yet unmerged features.

Hence updated install instructions would be 
1. install `npm` via 
```bash
> brew install npm
```
2. install my fork of `instant-markdown-d` via 
```bash
> npm install -g --from-git https://github.com/maxkoe/instant-markdown-d
```
3. add `Plugin 'suan/vim-instant-markdown'` to the vundle part of you `.vimrc` and run `:PluginInstall` from within vim.

## [vim-markdown](http://vimawesome.com/plugin/vim-markdown-sad-beautiful-tragic)

Superior syntax-highlighting in markdown and some additional, useful keymappings. Further I set
```vim
let g:markdown_enable_spell_checking = 0
```
to disable the automatic spell checking set by default.
