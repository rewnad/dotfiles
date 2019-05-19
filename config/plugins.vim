""" Lightline
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

""" Gitgutter
set updatetime=100

""" NERDTree
""" Close editor if NERDTree is the only  window open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

""" Limelight
""" Turn on Limelight when entering Goyo
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
