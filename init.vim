call plug#begin('~/.config/nvim/plugged')
"Plug 'ncm2/ncm2'
Plug 'itchyny/lightline.vim'
Plug 'godlygeek/tabular'
Plug 'patstockwell/vim-monokai-tasty'
Plug 'ncm2/ncm2'
Plug 'Raimondi/delimitMate'
Plug 'plasticboy/vim-markdown'
Plug 'junegunn/goyo.vim'
Plug 'vim-pandoc/vim-pandoc'
call plug#end()

" Treat all .md files as markdown
autocmd BufNewFile,BufRead *.md set filetype=markdown

" Highlight the line the cursor is on
autocmd FileType markdown set cursorline

" Hide and format markdown elements like **bold**
autocmd FileType markdown set conceallevel=2

" Set spell check to British English
autocmd FileType markdown setlocal spell spelllang=nb

autocmd FileType markdown imap <C-O> <Esc>:w<CR><Esc>:Pandoc pdf<CR>
autocmd FileType markdown map <C-O> <Esc>:w<CR><Esc>:Pandoc pdf<CR>

" Monokai-tasty
let g:vim_monokai_tasty_italic = 1                  " Allow italics.
colorscheme vim-monokai-tasty                       " Enable monokai theme.

" LightLine.vim 
set laststatus=2              " To tell Vim we want to see the statusline.
let g:lightline = {
   \ 'colorscheme':'monokai_tasty',
   \ }

"nnoremap <C-g> :Goyo<CR>
"autocmd FileType markdown Goyo

" Configuration for vim-markdown
let g:vim_markdown_conceal = 2
let g:vim_markdown_conceal_code_blocks = 0
let g:vim_markdown_math = 1
let g:vim_markdown_toml_frontmatter = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_strikethrough = 1
let g:vim_markdown_autowrite = 1
let g:vim_markdown_edit_url_in = 'tab'
let g:vim_markdown_follow_anchor = 1

set termguicolors

set expandtab

" Use two spaces instead of tabs
set tabstop=2

" The same but for indents
set shiftwidth=2

" Keep cursor in approximately the middle of the screen
set scrolloff=12

" AAdniz config

set number
set mouse=a
set nowrap
set clipboard+=unnamedplus

map - :

"" Make vim act like nano
" just save
map <C-O> <Esc>:w<CR>
imap <C-O> <Esc>:w<CR>

" save and quit
map <C-X>y <Esc>:wq<CR>
imap <C-X>y <Esc>:wq<CR>

" try to quit
map <C-X> <Esc>:q<CR>
imap <C-X> <Esc>:q<CR>

" force quit
map <C-X><C-X> <Esc>:q!<CR>
imap <C-X><C-X> <Esc>:q!<CR>

" remove line
map <C-K> <Esc>dd
imap <C-K> <Esc>dd<Esc>i

" Search
map <C-W> <Esc>/
imap <C-W> <Esc>/

" shift+arrow selection
nmap <S-Up> v<Up>
vmap <S-Up> <Up>
imap <S-Up> <Esc>v<Up>
nmap <S-Down> v<Down>
vmap <S-Down> <Down>
imap <S-Down> <Esc>v<Down>
nmap <S-Left> v<Left>
vmap <S-Left> <Left>
imap <S-Left> <Esc>v<Left>
nmap <S-Right> v<Right>
vmap <S-Right> <Right>
imap <S-Right> <Esc><Right>v<Right>
nmap <S-Home> v<Home>
vmap <S-Home> <Home>
imap <S-Home> <Esc>v<Home>
nmap <S-End> v<End><Left>
vmap <S-End> <End><Left>
imap <S-End> <Esc><Right>v<End><Left>

" Moving
nmap <C-Up> <C-u>
nmap <C-Down> <C-d>
imap <C-Up> <Esc><C-u>i
imap <C-Down> <Esc><C-d>i

" Highlight and then search
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>
" Search and replace
vnoremap <C-R> y:%s/<C-R>=escape(@",'/\')<CR>//g<Left><Left>

" prevent cut
nnoremap d "_d
vnoremap d "_d
