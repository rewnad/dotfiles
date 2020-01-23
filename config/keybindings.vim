""" Window navigation
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
map <C-n> :NERDTreeToggle<CR>
nnoremap <Leader><space> :noh<cr>
nnoremap <Leader>f :Goyo<cr>
nnoremap <Leader>z :Limelight!!<cr>
""" Enable Limelight for a range (normal or visual mode)
nmap <Leader>l <Plug>(Limelight)
xmap <Leader>l <Plug>(Limelight)


""" Ale Fix
nmap <Leader>f :ALEFix
