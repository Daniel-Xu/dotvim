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
"             set <leader>
"""""""""""""""""""""""""""""""""""""""""""""
let mapleader=","

"""""""""""""""""""""""""""""""""""""""""""""
"            plugin
"""""""""""""""""""""""""""""""""""""""""""""
"handlebar"
Plugin 'mustache/vim-mustache-handlebars'
let g:mustache_abbreviations = 1
" <Leader> td :TernDef  Jump to definition (yes, 'td' is duplicated)
" <Leader> tb :TernDocBrowse  Browse documentation
" <Leader> tt :TernType Type hints, what's the variable type or function type
" <Leader> tpd  :TernDefPreview Jump to definition inside preview
" <Leader> tsd  :TernDefSplit Definition in new split
" <Leader> ttd  :TernDefTab Definition in new tab
" <Leader> tr :TernRefs All references under cursor
" <Leader> tR :TernRename Rename variable


Plugin 'marijnh/tern_for_vim'
" enable Keyboardinput
let g:tern_map_keys = 1
let g:tern_show_argument_hints='on_hold'
let g:tern_map_prefix = '<leader>'

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
"Bundle 'ZenCoding.vim'
Bundle 'mattn/emmet-vim'


"complete () '' "
Bundle 'AutoClose'

"find word character"
"Bundle 'EasyMotion'

"grep"
"Bundle 'ack.vim'
Bundle 'rking/ag.vim'

Bundle 'L9'
"Bundle 'FuzzyFinder'

"ctrl-p"
Bundle 'ctrlp.vim'

"tree"
Bundle 'The-NERD-tree'

"comment"
Bundle 'The-NERD-Commenter'
"add additional space
let NERDSpaceDelims=1

"snippet"
Bundle 'UltiSnips'
Bundle 'honza/vim-snippets'


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

"YCM"
let g:ycm_complete_in_comments = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1

"javascript syntax color"
Bundle 'jelera/vim-javascript-syntax'

" js indent
Bundle 'pangloss/vim-javascript'

"The default mapping to toggle the plugin is <Leader>ig
Bundle 'nathanaelkane/vim-indent-guides'

"auto check error"
"Bundle 'scrooloose/syntastic'

"parses your JavaScript properly"
"Bundle 'marijnh/tern_for_vim'

"completion"

Bundle 'Valloric/YouCompleteMe'


"""""""""""""""""""""""""""""""""""""""""""""
"             plugin config
"""""""""""""""""""""""""""""""""""""""""""""
"js error checking"
"let g:syntastic_check_on_open=0;

"ag config"
",h ag search current cursor word
",g find what you want
map <leader>g <Esc>:Ag<SPACE>

"completion"
let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
set completeopt-=preview


"ZenCoding config"
let g:user_emmet_expandabbr_key = '<c-e>'
let g:user_emmet_mode='a'
let g:use_emmet_complete_tag = 1


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
  \ 'dir':  '\.git$\|\.hg$\|\.svn$\|bower_components$\|dist$\|node_modules$\|project_files$\|test\|ember',
  \ 'file': '\v\.(log|jpg|png|jpeg)$',
  \ }


"NERDtree conf"
nnoremap ,n :NERDTreeToggle<CR>
let NERDTreeShowLineNumbers=1

"NERDtreeComment conf"
map <c-c> ,c<space>

"UltiSnips conf"
let g:UltiSnipsUsePythonVersion = 2

let g:UltiSnipsSnippetsDir        = $HOME.'/.vim/UltiSnips/'
let g:UltiSnipsSnippetDirectories=["UltiSnips"]
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsListSnippets="<c-h>"

"dash.app"
" nmap <silent> <leader>d <Plug>DashSearch
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
nnoremap <leader>1 YpVr=
nnoremap <leader>2 YpVr-

"for current path: %%"
"c means current, and ,c to edit current
cnoremap %% <C-R>=expand('%.h').'/'<cr>
map <leader>c :edit %%


"date setting"
inoremap <leader>t <esc>:r! date "+\%Y-\%m-\%d \%H:\%M:\%S"<cr>


augroup filetype_html
    autocmd!
    autocmd FileType   markdown set ts=4 sw=4 expandtab
    autocmd FileType         cc set ts=4 sw=4 expandtab
    autocmd FileType          c set ts=4 sw=4 expandtab
    autocmd FileType        cpp set ts=4 sw=4 expandtab
    autocmd FileType javascript set ts=2 sw=2 expandtab
    autocmd FileType ruby       set ts=2 sw=2 expandtab
    autocmd FileType eruby      set ts=2 sw=2 expandtab
    autocmd FileType erb        set ts=2 sw=2 expandtab
augroup END

""""""""""""""""""""""""""""""""""""""""
"             buffers
""""""""""""""""""""""""""""""""""""""""
" in order to switch between buffers with unsaved change
set hidden

"shift+tab => previous  tab => next  ,bd => delete "
map <s-tab> <C-^><cr>
map <leader>bn :bn<cr>
map <leader>bp :bp<cr>
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
augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }
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
"             silver search
""""""""""""""""""""""""""""""""""""""""
"use silver search to replace default built-in grep"
".agignore for ignore some file"

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

"bind  ,m to grep word under cursor
nnoremap <leader>m :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" strip trailing whitespace in the current file
nnoremap <leader>d :%s/\s\+$//<cr>:let @/=''<CR>

""""""""""""""""""""""""""""""""""""""""
"             airline
""""""""""""""""""""""""""""""""""""""""
"let g:airline_detect_whitespace = 0
let g:airline#extensions#tabline#enabled = 1

let g:airline_theme='dark'

let g:airline_powerline_fonts=1
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

let g:airline_symbols = {}

let g:airline_symbols.branch = ' '
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ' '

"let g:airline_branch_prefix = ' '
"let g:airline_readonly_symbol = ''
"let g:airline_linecolumn_prefix = ' '



""""""""""""""""""""""""""""""""""""""""
"          config for trailing space
""""""""""""""""""""""""""""""""""""""""

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()


""""""""""""""""""""""""""""""""""""""""
"          config for macvim
""""""""""""""""""""""""""""""""""""""""
if has("gui_macvim")
    let g:NERDCustomDelimiters = {
          \ 'ruby': { 'left': 'hel', 'leftAlt': 'FOO', 'rightAlt': 'BAR' },
          \ 'grondle': { 'left': '{{', 'right': '}}' }
          \ }
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


    let g:mustache_abbreviations = 1
    let g:indent_guides_auto_colors = 0
    autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=white   ctermbg=3
    autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=lightgrey ctermbg=4

    highlight ExtraWhitespace ctermbg=red guibg=red
    match ExtraWhitespace /\s\+$/
    autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
    autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
    autocmd InsertLeave * match ExtraWhitespace /\s\+$/
    autocmd BufWinLeave * call clearmatches()

    augroup reload_vimrc " {
      autocmd!
      autocmd BufWritePost $MYVIMRC source $MYVIMRC
    augroup END " }
endif
"""""""""""""""""""""""""""""""""""""""""""""
"             open filetype detection
"""""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on     " required!
