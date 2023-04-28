set mouse=a
set updatetime=500
set timeoutlen=300
set history=200
set smartcase
set signcolumn=yes
set autoindent
set nowrap
set cc=80
" Numbers
set relativenumber
set number
" Folding
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()

autocmd VimEnter * NERDTree | wincmd p
autocmd VimEnter * TSEnable highlight

inoremap <silent><expr> <TAB>
	\ coc#pum#visible() ? coc#pum#next(1) : "\<Tab>" 
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"	


" Plugins - {{{
call plug#begin()

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'ryanoasis/vim-devicons'
Plug 'EdenEast/nightfox.nvim'

Plug 'kyazdani42/nvim-web-devicons'

Plug 'tpope/vim-sensible'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc-snippets'
Plug 'nanozuki/tabby.nvim'
Plug 'romgrk/barbar.nvim'

Plug 'rust-lang/rust.vim'

Plug 'nvim-lualine/lualine.nvim'
Plug 'tikhomirov/vim-glsl'
Plug 'mfussenegger/nvim-dap'

call plug#end()
" }}}


colorscheme carbonfox
lua require('lualine').setup()
lua require('lualine')extentions = {'nerdtree'}
