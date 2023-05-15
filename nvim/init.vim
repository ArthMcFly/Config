:set number
:set cursorline
:set autoindent
:set mouse=a
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set termguicolors
:set encoding=UTF-8
:set guifont=DroidSansMono\ Nerd\ Font\ 11

" Disable Perl and gem
let g:loaded_ruby_provider = 0
let g:loaded_perl_provider = 0

" Plugins
call plug#begin()
Plug 'https://github.com/ap/vim-css-color' 
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'https://github.com/preservim/tagbar' 
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/ap/vim-css-color' 
Plug 'https://github.com/rafi/awesome-vim-colorschemes' 
Plug 'https://github.com/tanvirtin/monokai.nvim'
Plug 'https://github.com/tc50cal/vim-terminal' 
Plug 'https://github.com/neoclide/coc.nvim'
Plug 'patstockwell/vim-monokai-tasty'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'pangloss/vim-javascript'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'styled-components/vim-styled-components'
Plug 'elzr/vim-json'
Plug 'jparise/vim-graphql'
Plug 'wfxr/minimap.vim'
Plug 'https://github.com/jiangmiao/auto-pairs'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'https://github.com/nanozuki/tabby.nvim'
Plug 'https://github.com/ErichDonGubler/vim-sublime-monokai'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'https://github.com/ervandew/supertab'
call plug#end() 

" keybinds
nnoremap <C-t> :NERDTreeToggle <CR>
nmap <C-s> :w <CR>
nmap <C-x> :q <CR>
nmap <C-o> :TagbarToggle <CR>
nmap <C-m> :MinimapToggle
nmap <C-p> :CocCommand clangd.memoryUsage<CR>
nmap <C-n> :tabnew<CR>
nmap <C-left> :tabprevious<CR>
nmap <C-right> :tabnext<CR>
nmap <C-f> :Files<CR>

" Colorscheme
syntax on
colorscheme sublimemonokai


" Tab config
let g:SuperTabDefaultCompletionType = "<c-n>"

" NERDTree config
au VimEnter *  NERDTree 



