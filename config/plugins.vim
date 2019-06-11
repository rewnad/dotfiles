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

""" Emmet-vim
let g:user_emmet_leader_key='<Tab>'
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \}

""" Startify
" let g:startify_change_to_dir = 1
let g:startify_change_to_vcs_root = 1

""" Vim-jsx
let g:jsx_ext_required = 0

""" Ale
let g:ale_fix_on_save = 1
let g:ale_fixers = {
\   'javascript': ['eslint'],
\}
