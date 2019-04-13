" WARNING: Do NOT edit this config file in ~/. Make sure you are editing the
" source file at ~/home_repo/home_dir and run bin/refreshHomeFromRepo to update.

set background=dark

"Make searches case-sensitive only if they contain upper-case characters
set ignorecase
set smartcase
" show search matches as the search pattern is typed
set incsearch
" highlight last search matches
set hlsearch


" Can load this config with:
"    vim -u ~nelsons/.vimrc

" enable mouse (enables drag to select, scrollwheel, etc.)
"set mouse=a

" Clear search highlighting (noh) when CR is hit while in command mode
" Reference: http://stackoverflow.com/questions/657447/vim-clear-last-search-highlighting
" Reference: http://www.viemu.com/blog/2009/06/16/a-vim-and-viemu-mapping-you-really-cant-miss-never-type-noh-again/
nnoremap <CR> :noh<CR><CR>
" This works better (hit ESC to clear search highlights), but it only works properly if you enter it manually from command prompt.
" Causes weird behavior if it is in .vimrc.
" nnoremap <Esc> :noh<return><Esc>

" Provide Python specific config tweaks
" Based on http://www.vex.net/~x/python_and_vim.html and http://amix.dk/vim/vimrc.html
" Other resource: https://wiki.python.org/moin/Vim
" The BufEnter event seems to fire both when loading an existing file (Bufread)
" or when creating a new file (BufNewFile).
"autocmd BufEnter *.py set tabstop=4
"autocmd BufEnter *.py set shiftwidth=4
"autocmd BufEnter *.py set smarttab
"autocmd BufEnter *.py set expandtab
"autocmd BufEnter *.py set autoindent
" Trying these setting for all file types, not just Python
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set autoindent
" smartindent automatically indents after certain types of lines
autocmd BufEnter *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class,with

command Mynum ! cat -n %:t

