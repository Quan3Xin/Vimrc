set nu
if has('python3')
  silent! python3 1
endif
set backspace=2
set spell
set mouse=a
set encoding=utf-8
set autoindent
set tabstop=4
set noswapfile
set nobackup
set hlsearch
syntax on
set ru
set smarttab
"c format 
set et
set ci
set shiftwidth=4
"autocmd FileType make setlocal noexpandtab

filetype off                  " required
set nocompatible              " be iMproved, required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'suan/vim-instant-markdown'

Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'powerline/powerline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'google/vim-maktaba'
Plugin 'google/vim-codefmt'
Plugin 'google/vim-glaive'
Plugin 'majutsushi/tagbar'
Plugin 'posva/vim-vue'
Plugin 'marijnh/tern_for_vim'
Plugin 'kien/ctrlp.vim'
Plugin 'w0rp/ale'
Plugin 'Lokaltog/vim-powerline'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
call vundle#end()            " required
filetype plugin indent on    " required

"ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
let g:ctrlp_user_command = 'find %s -type f'
"set completeopt=longest,menu

"for python
nnoremap <space> ff
au BufNewFile,BufRead *.py
\ set tabstop=4 |
\ set softtabstop=4 |
\ set shiftwidth=4  |
\ set textwidth=79 |
\ set expandtab |
\ set autoindent |
\ set fileformat=unix

au FileType c,cpp,python,vim set textwidth=81
set colorcolumn=81
set t_Co=256

au FileType html,htmldjango,lua,javascript,nsis
    \ set expandtab | set tabstop=2 | set shiftwidth=2
"color
colorscheme solarized

let g:solarized_termcolors=256
if has('gui_running')
    set background=dark
else
    set background=dark
endif
"ale syntax format
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
let g:ale_sign_column_always = 1

nmap <silent> <C-j> <Plug>(ale_next_wrap)
let b:ale_linters = ['pylint' ]
" Fix Python files with autopep8 and yapf.
let b:ale_fixers = ['autopep8', 'yapf']
" Disable warnings about trailing whitespace for Python files.
let b:ale_warn_about_trailing_whitespace = 0
let g:ale_list_window_size = 5
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
set gfn=IBM\ Plex\ Mono:h13,Hack:h13,Source\ Code\ Pro:h13,Menlo:h13


"ycmd
let g:ycm_server_python_interpreter='/usr/local/bin/python3'
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libc++'
"let g:ycm_collect_identifiers_from_tags_files=1 " 开启 YCM 基于标签引擎  
let g:ycm_min_num_of_chars_for_completion=2 " 从第2个键入字符就开始罗列匹配项  
let g:ycm_seed_identifiers_with_syntax=1    " 语法关键字补全  
let g:ycm_cache_omnifunc=0  " 禁止缓存匹配项,每次都重新生成匹配项  
let g:ycm_key_invoke_completion = '<C-a>'
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_semantic_triggers =  {
			\ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
			\ 'cs,lua,javascript': ['re!\w{2}'],
			\ }
"let g:ycm_filetype_blacklist = {
"      \ 'tagbar': 1,
"      \ 'notes': 1,
"      \ 'markdown': 1,
"      \ 'netrw': 1,
"      \ 'unite': 1,
"      \ 'text': 1,
"      \ 'vimwiki': 1,
"      \ 'pandoc': 1,
"      \ 'infolog': 1,
"      \ 'mail': 1,
"	\'vim':1,
"	\'zsh':1
"      \}

"powerline
let g:Powerline_symbols = 'fancy'



"set tree
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeIgnore = ['\.pyc$', '\.pyo$']
"auto format
"noremap <F3> :ALEFix<CR>
"google auto format
"
augroup autoformat_settings
  autocmd FileType bzl AutoFormatBuffer buildifier
  autocmd FileType proto,javascript AutoFormatBuffer clang-format
  autocmd FileType dart AutoFormatBuffer dartfmt
  autocmd FileType go AutoFormatBuffer gofmt
  autocmd FileType gn AutoFormatBuffer gn
  autocmd FileType html,css,json AutoFormatBuffer js-beautify
  autocmd FileType java AutoFormatBuffer google-java-format
  autocmd FileType python AutoFormatBuffer yapf
  " Alternative: autocmd FileType python AutoFormatBuffer autopep8
augroup END
let g:formatter_yapf_style = 'pep8'



"tager bar
nmap <C-t> :TagbarToggle<CR>

"vue syntax 
autocmd FileType vue syntax sync fromstart

"makrdown
let g:vim_markdown_autowrite = 1

