This is the vim configuration files for my  vim

" Configuration file for vim
set modelines=0		" CVE-2007-2438
set cindent
" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing
set lines=40 columns=155
set hlsearch
set showmatch
set visualbell

set incsearch

set smartcase
set smarttab

set nu 
syntax on
set ruler
autocmd FileType c set expandtab
autocmd FileType cpp set expandtab
autocmd FileType php set expandtab
autocmd FileType python set expandtab
autocmd FileType html set expandtab
 set cindent shiftwidth=4
 set nocompatible
 "set tabstop = 4"
 set smartindent
 "set shitfwidth = 4"
 filetype on
 filetype plugin on
 filetype indent on
 se viminfo+=
 set iskeyword+=_,$,@,%,#,-
 " Don't write backup file if vim is being called by "crontab -e"
 au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
 " Don't write backup file if vim is being called by "chpass"
 au BufWrite /private/etc/pw.* set nowritebackup nobackup

