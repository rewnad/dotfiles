""" Vim-Plug
call plug#begin()
Plug 'Numkil/ag.nvim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'jiangmiao/auto-pairs' " insert or delete brackets, parens, quotes in pair
Plug 'airblade/vim-gitgutter' " shows git diff in the gutter
Plug 'sheerun/vim-polyglot' " A solid language pack
Plug 'junegunn/goyo.vim' " Focus mode
Plug 'junegunn/limelight.vim' " Focus mode even more
Plug 'itchyny/lightline.vim' " Status line plug in
Plug 'tpope/vim-surround' " All about surrounding
Plug 'scrooloose/nerdtree'
Plug 'mhinz/vim-startify' " Start screen
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }

""" Color schemes
Plug 'drewtempelmeyer/palenight.vim'
Plug 'lifepillar/vim-solarized8'
Plug 'junegunn/seoul256.vim' " color theme
Plug 'dracula/vim', { 'as': 'dracula' }
call plug#end()

source $HOME/.config/nvim/config/general.vim
source $HOME/.config/nvim/config/plugins.vim
source $HOME/.config/nvim/config/prettier.vim
source $HOME/.config/nvim/config/keybindings.vim
