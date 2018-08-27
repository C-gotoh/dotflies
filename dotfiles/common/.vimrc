" stop vi-like behaviour
set nocompatible
" line numbers
set nu
" more colors
set t_Co=256
" use dark colors in bg
set bg=dark
" colorscheme
colorscheme desert
" underline cursor line
" set cul
" style cursorline
"hi CursorLine term=Bold cterm=NONE ctermfg=White ctermbg=4 gui=NONE guifg=DarkGrey guibg=NONE
"hi CursorLine term=Bold ctermfg=White ctermbg=DarkRed gui=NONE guifg=DarkGrey guibg=NONE
"hi CursorColumn ctermfg=Yellow ctermbg=Yellow term=Bold
set cursorline
set cursorcolumn

augroup vimrc

   autocmd!

   autocmd ColorScheme * highlight CursorLine cterm=None ctermbg=Black
   autocmd ColorScheme * highlight CursorColumn cterm=None ctermbg=Black

 augroup END

" syntax hl
syntax on
" show cursor position below
set ruler
" hl search
set hlsearch

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" better commandline completion
set wildmenu
" show partial command on last row
set showcmd

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" Always display the status line, even if only one window is displayed
set laststatus=2

" Use visual bell instead of beeping when doing something wrong
set visualbell

" Indentation settings for using 4 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=4
set softtabstop=4
set expandtab

" Map <C-M> to redraw screen + turn off current search highlighting 
nnoremap <C-M> :nohl<CR><C-L>

" in diff mode get one line to current window
nnoremap <silent> <leader>dg V:diffget <cr> :diffu <cr>
nnoremap <silent> <leader>do V:diffput <cr>

" map r to replace yanked text in insert mode
vmap r "_dP

" hidden characters
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<

" fold level unfold with zi
set foldmethod=manual
set foldlevel=20
set foldlevelstart=20
set nofoldenable

" navigate buffers
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-H> <C-W>h
nnoremap <C-L> <C-W>l
