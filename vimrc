execute pathogen#infect()

set nocompatible		"Set no compatible changes
set splitright
set incsearch			"Set incremental search
set ignorecase			"Ignore case when searching
set scrolloff=4			"Keep 4 lines at bottom and top on the screen
set nobackup			"Get rid of the ~files (backups)
set wildmenu			"Show autocomplete menus
set wildmode=list:longest	"Make wildmenu behave like bash completion.
set shiftwidth=8
set softtabstop=8		"Setting identation to 8, using soft tab
set tabstop=8
set noexpandtab
set autoindent			"Set autoidentation
set cindent			"Set autoidentation for C code blocks
set nocompatible
"set tw=80			"Limit text width to 80 characters
"set number
set t_BE=
set pastetoggle=<F2>
set backupdir=$HOME/.vim/tmp//	"Store backup and swap files in temporary folder
set directory=$HOME/.vim/tmp//
set undodir=$HOME/.vim/tmp//

syntax enable
colorscheme monokai

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 3
let g:netrw_winsize = 17
autocmd VimEnter * :Vexplore
