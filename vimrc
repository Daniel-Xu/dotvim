"""""""""""""""""""""""""""""""""""""""""""""
"            vundle 
"""""""""""""""""""""""""""""""""""""""""""""
set nocompatible          " be iMproved
filetype off              " required!
set backspace=indent,eol,start
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
"""""""""""""""""""""""""""""""""""""""""""""
"            plugin 
"""""""""""""""""""""""""""""""""""""""""""""
"vim easy align"
Bundle 'junegunn/vim-easy-align'

"powerline"
"Bundle 'Lokaltog/powerline'
Bundle 'bling/vim-airline'
"slim highlight"
Bundle 'slim-template/vim-slim'

"coffee script highlight"
Bundle 'vim-coffee-script'

"html"
Bundle 'ZenCoding.vim'

"complete () '' "
Bundle 'AutoClose'

"find word character"
"Bundle 'EasyMotion'

"grep"
Bundle 'ack.vim'

Bundle 'L9'
"Bundle 'FuzzyFinder'

"ctrl-p"
Bundle 'ctrlp.vim'

"tree"
Bundle 'The-NERD-tree'

"comment"
Bundle 'The-NERD-Commenter'

"snippet"
Bundle 'UltiSnips'

"jump around () html and so on"
Bundle 'matchit.zip' 

"awesome rails plugin"
Bundle 'tpope/vim-rails'

"nice surround"
Bundle 'surround.vim'

"git"
Bundle "fugitive.vim"

"dash"
Bundle "rizzatti/funcoo.vim"
Bundle "rizzatti/dash.vim"


"javascript syntax color"
Bundle 'jelera/vim-javascript-syntax'

" js indent
Bundle 'pangloss/vim-javascript'

"The default mapping to toggle the plugin is <Leader>ig
Bundle 'nathanaelkane/vim-indent-guides'

"auto check error"
Bundle 'scrooloose/syntastic'

"parses your JavaScript properly"
Bundle 'marijnh/tern_for_vim'

"completion"
Bundle 'Valloric/YouCompleteMe'

"""""""""""""""""""""""""""""""""""""""""""""
"             set <leader> 
"""""""""""""""""""""""""""""""""""""""""""""
let mapleader=","

"""""""""""""""""""""""""""""""""""""""""""""
"             plugin config 
"""""""""""""""""""""""""""""""""""""""""""""
"js error checking"
let g:syntastic_check_on_open=1

"ack config"
map <leader>g <Esc>:Ack  

"completion"
let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
set completeopt-=preview


"ZenCoding config"
let g:user_zen_leader_key = '<c-e>'

"fuzzyfinder conf"
"nnoremap <F5> :FufRenewCache<CR>
"nnoremap <c-k> :FufCoverageFile<cr>
"let g:fuf_coveragefile_globPatterns = ['**/*.erb', '**/*.rb', '**/*.slim', '**/*']
"let g:fuf_coveragefile_exclude = '\v\~$|\.(o|exe|dll|bak|orig|swp)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|(tmp|log|vendor)'
"let g:fuf_enumeratingLimit = 5000
"let g:fuf_coveragefile_prompt = '=>'

"ctrlp"
"<c-y> create new file"
"default is path mode, <c-d> file mode"
"<c-f> most recently unit mode"
"<c-z> mark a file, then <c-o> "
let g:ctrlp_map = '<c-k>'
let g:ctrlp_open_multiple_files = 'v'

set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git)$',
  \ 'file': '\v\.(log|jpg|png|jpeg)$',
  \ }


"NERDtree conf"
nnoremap ,n :NERDTreeToggle<CR>
let NERDTreeShowLineNumbers=1

"NERDtreeComment conf"
map <c-c> ,c<space>

"UltiSnips conf"
let g:UltiSnipsUsePythonVersion = 2
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

"dash.app"
nmap <silent> <leader>d <Plug>DashSearch
"""""""""""""""""""""""""""""""""""""""""""""
"
" these commands open folds
"
" zo - open, zc - close, zr - open recursively
"
" zm - close all
"
"""""""""""""""""""""""""""""""""""""""""""""
"set foldopen=block,insert,jump,mark,percent,quickfix,search,tag,undo
""set fdm=indent

"""""""""""""""""""""""""""""""""""""""""""""
"         windows management 
"""""""""""""""""""""""""""""""""""""""""""""
" Move the cursor to the window left of the current one"
noremap <silent> <leader>h :wincmd h<cr>
" Move the cursor to the window below the current one
noremap <silent> ,j :wincmd j<cr>
" Move the cursor to the window above the current one
noremap <silent> ,k :wincmd k<cr>
" Move the cursor to the window right of the current one
noremap <silent> ,l :wincmd l<cr>

" Move the current window to the right of the main Vim window
noremap <silent> ,ml <C-W>L
" Move the current window to the top of the main Vim window
noremap <silent> ,mk <C-W>K
" Move the current window to the left of the main Vim window
noremap <silent> ,mh <C-W>H
" Move the current window to the bottom of the main Vim window
noremap <silent> ,mj <C-W>J"
"open v or h window and move to it 
nnoremap <leader>w <c-w>v<c-w>l<cr>
nnoremap <leader>s <c-w>s<c-w>j<cr>

"""""""""""""""""""""""""""""""""""""""""""""
"            useful mapping 
"""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>' viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>ft Vatzf
nnoremap <leader>u :<c-u>set transparency=77<cr>
nnoremap <leader>U :<c-u>set transparency=0<cr>

"markdown"
"nnoremap <leader>1 YpVr=
"nnoremap <leader>2 YpVr-

augroup filetype_html
    autocmd!
    autocmd FileType markdown set ts=4 sw=4 expandtab
augroup END

""""""""""""""""""""""""""""""""""""""""
"             buffers
""""""""""""""""""""""""""""""""""""""""
" in order to switch between buffers with unsaved change 
set hidden

"shift+tab => previous  tab => next  ,bd => delete "
map <s-tab> <C-^><cr>
map <leader>bn :bn<cr>
map <leader>bd :bd<cr>

""""""""""""""""""""""""""""""""""""""""
"             buffers
""""""""""""""""""""""""""""""""""""""""
vnoremap <silent> <Enter> :EasyAlign<cr>


""""""""""""""""""""""""""""""""""""""""
"             quit quickly
""""""""""""""""""""""""""""""""""""""""
inoremap <leader>, <esc>:q<cr>
nnoremap <leader>, :q<CR>
vnoremap <leader>, <esc>:q<cr>
" force quit
nnoremap ,f :q!<cr>

""""""""""""""""""""""""""""""""""""""""
"             vimrc editing 
""""""""""""""""""""""""""""""""""""""""
"edite my vimrc
nnoremap ,e :split $MYVIMRC<CR>
" When vimrc is edited, reload it
" copied from http://amix.dk/vim/vimrc.html
autocmd! bufwritepost vimrc source ~/.vim/vimrc
""""""""""""""""""""""""""""""""""""""""
"            quick escape  
""""""""""""""""""""""""""""""""""""""""
" set quick escape from insert mode, and now I can go without arrow keys and
" use j and k to move around in insert mode
inoremap JJ <esc>
inoremap jj <esc>

""""""""""""""""""""""""""""""""""""""""
"             vim env
""""""""""""""""""""""""""""""""""""""""
set encoding=utf8

"completion
set wildmenu

"show command in the lower right corner
set showcmd

"open the syntax
syntax on

"cursor position"
set ruler

""set autoindent

" when the page starts to scroll, keep the cursor 8 lines from the top and 8 lines from the bottom
set scrolloff=3
"set textwidth=78

"the two combined to make vim deal with case-sensitive searching
set ignorecase
set smartcase

"make vim deal with searching highligth, and \",h" will stop highlight
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>

"make % to tab
map <tab> %

"auto wrap"
set wrap

"if a line is too long, you will able to go to every line of it
nnoremap j gj
nnoremap k gk

"if you want to delete to n, exclude n
"you should {d n d}, the same as {n j/k}
set relativenumber

""set swp file location
set directory=~/tmp,/tmp
nnoremap / /\v
vnoremap / /\v

"paste conf"
set pastetoggle=<f2>

"spell"
nnoremap ,p :setlocal spell!<cr>

"while space in the end"
"set list
"set listchars=trail:+

"support mouse action"
"set mouse=a

""""""""""""""""""""""""""""""""""""""""
"             tabbing 
""""""""""""""""""""""""""""""""""""""""
"when this is opened, <Tab> will be replaced by <space>
set expandtab

"set softtabstop=2
set tabstop=2

"when you modify the text with <, it matters
set shiftwidth=2

""""""""""""""""""""""""""""""""""""""""
"             dictionary
""""""""""""""""""""""""""""""""""""""
" i_CTRL_X_K 
set dictionary+=~/.vim/dict/simple
set dictionary+=/usr/share/dict/words

""""""""""""""""""""""""""""""""""""""""
"             status line
""""""""""""""""""""""""""""""""""""""""
set statusline=%F:\ %l\ Total:\ %L\ %{fugitive#statusline()}

" tell VIM to always put a status line in, even if there is only one window
set laststatus=2

""""""""""""""""""""""""""""""""""""""""
"             misc
""""""""""""""""""""""""""""""""""""""""
" have nice $ sign when you use `cw`
set cpoptions+=$
" cd to the directory containing the file in the buffer
nmap <silent> ,cd :lcd %:h<CR>
set  t_Co=256
set noshowmode


""""""""""""""""""""""""""""""""""""""""
"             airline
""""""""""""""""""""""""""""""""""""""""
"let g:airline_detect_whitespace = 0
let g:airline_theme='dark'

let g:airline_powerline_fonts=1
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_branch_prefix = ' '
let g:airline_readonly_symbol = ''
let g:airline_linecolumn_prefix = ' '

""""""""""""""""""""""""""""""""""""""""
"          config for macvim 
""""""""""""""""""""""""""""""""""""""""
if has("gui_macvim")
    set  t_Co=256
    colorscheme lucid
    "colorscheme distinguished
    "set background=dark
    set guioptions-=m
    set guioptions-=T

    "set guifont=Menlo:h14
    set guifont=Inconsolata\ for\ Powerline:h17
    set cursorline
    set cursorcolumn
    set colorcolumn=85
    "set transparency=77
    "set background=light
    highlight Normal ctermfg=grey ctermbg=grey 


    let g:indent_guides_auto_colors = 0
    autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=white   ctermbg=3
    autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=lightgrey ctermbg=4

endif
"""""""""""""""""""""""""""""""""""""""""""""
"             open filetype detection
"""""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on     " required!
