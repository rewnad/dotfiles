""" Theme
syntax enable
set background=dark
colorscheme seoul256
set termguicolors
set guicursor= " Fix cursor issue in terminator
set number " turn on line numbers
set nowrap " don't wrap lines that go over a screens width
set cursorline " highlight the line the cursor is on
set tabstop=2 shiftwidth=2 softtabstop=2 expandtab smarttab autoindent

" Folding
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

" Remove trailing spaces when saved
autocmd BufWritePre * %s/\s\+$//e
