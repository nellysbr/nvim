:set number
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

call plug#begin('~/AppData/Local/nvim/plugged')

Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'ryanoasis/vim-devicons'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plug 'joshdick/onedark.vim'
Plug 'iCyMind/NeoSolarized'
Plug 'mattn/emmet-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dracula/vim'
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion

call plug#end()


nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>



" open new split panes to right and below
set splitright
set splitbelow
" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
  split term://cmd
  resize 10
endfunction
nnoremap <c-n> :call OpenTerminal()<CR>


" use alt+hjkl to move between split/vsplit panels
tnoremap <A-Left> <C-\><C-n><C-w>h
tnoremap <A-Down> <C-\><C-n><C-w>j
tnoremap <A-Up> <C-\><C-n><C-w>k
tnoremap <A-Right> <C-\><C-n><C-w>l
nnoremap <A-Left> <C-w>h
nnoremap <A-Down> <C-w>j
nnoremap <A-Up> <C-w>k
nnoremap <A-Right> <C-w>l

nnoremap <C-p> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}
  
  let $FZF_DEFAULT_COMMAND = 'ag -g ""'

  if (has("termguicolors"))
 set termguicolors
endif
syntax enable
colorscheme dracula


