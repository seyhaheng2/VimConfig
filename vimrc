" Font Config
source /usr/local/lib/python2.7/site-packages/powerline/bindings/vim/plugin/powerline.vim
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'luna'
let g:Powerline_symbols = 'fancy'
set guioptions=e  " instead of clearing this, set it to only `e`
let g:airline_left_sep = '>'
let g:airline_left_sep = '|'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

if has("gui_macvim")
  " looks a little better fullscreen
  " remove scroll bars and tool bar
  :set guioptions-=m  "remove menu bar
  :set guioptions-=T  "remove toolbar
  :set guioptions-=r  "remove right-hand scroll bar
  :set guioptions-=L  "remove left-hand scroll bar
  set background=dark
  set guifont=fancy\ Pro:h14 " nice font if you have it
  set fuoptions=maxvert,maxhorz " expand width in fullscreen
  set showtabline=0 " hide tab bar
  set t_Co=256
  let g:rehash256=1
endif

let &colorcolumn=join(range(81,999),",")
syntax on
filetype plugin on
set laststatus=2
set shell=/bin/bash\ -li
set guioptions-=r
set guifont=PowerlineSymbols:h18
set ts=2 " Tabs are 2 spaces
set bs=2 " Backspace over everything in insert mode
set shiftwidth=2 " Tabs under smart indent
set nocp incsearch
set cinoptions=:0,p0,t0
set cinwords=if,else,while,do,for,switch,case
set formatoptions=tcqr
set cindent
set autoindent
set autowrite
set backspace=indent,eol,start
set lazyredraw
set smarttab
set expandtab
set nocompatible
set mouse=a
set ruler
set showcmd
set modelines=0
set showmode
set title
set expandtab
set lcs=eol:¬
set gdefault " Global as default
set foldenable " Turn on folding
set foldmethod=indent " Fold on the indent
set foldlevelstart=10 " Open most folds by default
set foldnestmax=10 " 10 nested folds max
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
set t_Co=256 " Explicitly tell Vim that the terminal supports 256 colors
:set number
:set syn=syntax-type
set nowrap
set pastetoggle=<F2>
set background=dark
"colorscheme seoul256
 colorscheme Tomorrow-Night
"colorscheme lucario
"colorscheme monokai
"colorscheme Benokai



autocmd BufNewFile,BufReadPost *.coffee setl foldmethod=indent nofoldenable
autocmd BufNewFile,BufReadPost *.coffee setl foldmethod=indent
autocmd BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab
au BufNewFile,BufRead *.coffee set filetype=coffee
autocmd BufNewFile,BufRead *.scss             set ft=scss.css
autocmd BufWritePost * FixWhitespace
nnoremap mm :bn<cr>
nnoremap nn :bp<cr>
inoremap jj <esc>
nnoremap <space> za
nnoremap Y c$
nnoremap gV `[v`]
nnoremap j gj
nnoremap k gk
nnoremap <leader>. :CtrlPTag<cr>
nnoremap <silent> <Leader>b :TagbarToggle<CR>
map <C-e> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>
let coffee_indent_keep_current = 1
:set omnifunc=csscomplete#CompleteCSS
set filetype=coffee.jasmine
nnoremap <leader>c :CoffeeCompile<CR>
autocmd BufNewFile,BufReadPost *.coffee setfiletype coffee
let g:angular_source_directory = 'app/source'
let g:angular_test_directory = 'test/units'



"Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-rails'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'pangloss/vim-javascript'
Plugin 'vim-ruby/vim-ruby'
Plugin 'honza/vim-snippets'
Plugin 'garbas/vim-snipmate'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'scrooloose/nerdtree'
Plugin 'matchit.zip'
Plugin 'tpope/vim-haml'
Plugin 'tomtom/tcomment_vim'
Plugin 'Townk/vim-autoclose'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-bundler'
Plugin 'kchmck/vim-coffee-script'
Plugin 'thoughtbot/vim-rspec'
Plugin 'tpope/vim-endwise'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'ervandew/supertab'
Plugin 'ctags.vim'
Plugin 'shmay/vim_html_to_haml'
Plugin 'Keithbsmiley/rspec.vim'
Plugin 'aurigadl/vim-angularjs'
Plugin 'jashkenas/coffeescript'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'duythinht/vim-coffee'
Plugin 'bling/vim-airline'
Plugin 'brendanjerwin/coffee-jasmine-snippets'
Plugin 'curist/vim-angular-template'
Plugin 'lukaszkorecki/CoffeeTags'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-git'
Plugin 'kannokanno/vimtest'
Plugin 'pivotal/jasmine'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'mileszs/ack.vim'
Plugin 'rking/ag.vim'
" Plugin 'AutoComplPop'
Plugin 'rizzatti/dash.vim'
Plugin 'kana/vim-arpeggio'
Plugin 'AnsiEsc.vim'
Plugin 'Improved-AnsiEsc'
Plugin 'tpope/vim-repeat'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'JulesWang/css.vim'
Plugin 'KurtPreston/vim-autoformat-rails'
Plugin 'junegunn/seoul256.vim'
Plugin 'noahfrederick/vim-noctu'
Plugin 'ChrisYip/Better-CSS-Syntax-for-Vim'
Plugin 'juvenn/mustache.vim'
Plugin 'amirh/HTML-AutoCloseTag'
Plugin 'burnettk/vim-angular'
Plugin 'othree/html5.vim'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'tomtom/checksyntax_vim'
Plugin 'justinj/vim-react-snippets'
Plugin 'saada/reactjs-snippets'
Plugin 'mtscout6/vim-cjsx'
Plugin 'mxw/vim-jsx'
Plugin 'raphamorim/lucario'
Plugin 'aaronjensen/vim-sass-status' 
Plugin 'groenewege/vim-less' 
Plugin 'hail2u/vim-css3-syntax' 
Plugin 'lukaszb/vim-web-indent' 
Plugin 'elzr/vim-json' 
Plugin 'jelera/vim-javascript-syntax' 
Plugin 'Shutnik/jshint2.vim'
Plugin 'benjaminwhite/Benokai'                  " Benokai
Plugin 'rdnetto/YCM-Generator'                  " YCM-Generator
Plugin 'parkr/vim-jekyll'                       " Jekyll
Plugin 'a.vim'

" Plugin 'syntaxGemfile.vim'
" Plugin 'othree/html5.vim'
" Plugin 'tpope/vim-markdown'
" Plugin 'majutsushi/tagbar'
Plugin 'Shougo/neocomplcache.vim'
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'
" Plugin 'airblade/vim-gitgutter'
" Plugin 'dahu/VimTestRunner'

call vundle#end()            " required
filetype plugin indent on    " required

" set relativenumber      " show numbers as relative by default
set cursorline          " highlight line where the cursor is
set cursorcolumn        " highlight column where the cursor is
set showmatch           " higlight matching parentheses and brackets
set wildmenu            " enable visual wildmenu
set noswapfile
set nobackup

" Are we supporting colors?
if &t_Co > 2 || has("gui_running")
   syntax on
   set colorcolumn=80
endif

" Are we supporting a full color pallete?
if &t_Co >= 256 || has("gui_running")
    color Tomorrow-Night
    set background=dark
endif

" Modify indenting settings
set autoindent              " autoindent always ON. 
set expandtab               " expand tabs
set shiftwidth=4            " spaces for autoindenting
set softtabstop=4           " remove a full pseudo-TAB when i press <BS>

autocmd FileType html,css,sass,scss,javascript,json,*.coffee
            \ setlocal shiftwidth=2 softtabstop=2
" Modify some other settings about files
set encoding=utf-8          " always use unicode (god damnit, windows)
set backspace=indent,eol,start " backspace always works on insert mode
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'









imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1

" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif







" Autocommands
augroup General
    autocmd!
    autocmd BufWritePost * FixWhitespace
augroup END
augroup HTML
    autocmd!
    autocmd FileType html setlocal shiftwidth=2 softtabstop=2 tabstop=2
augroup END
augroup vimscript
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END
augroup Ruby
    autocmd!
    autocmd FileType ruby setlocal shiftwidth=2 softtabstop=2 tabstop=2
    autocmd FileType eruby setlocal shiftwidth=2 softtabstop=2 tabstop=2
augroup END
augroup CSS
    autocmd!
    autocmd FileType css setlocal shiftwidth=2 softtabstop=2 tabstop=2
    autocmd FileType scss setlocal shiftwidth=2 softtabstop=2 tabstop=2
augroup END
augroup JavaScript
    autocmd!
    autocmd FileType javascript setlocal shiftwidth=2 softtabstop=2 tabstop=2
    autocmd FileType coffee setlocal shiftwidth=2 softtabstop=2 tabstop=2
augroup END


vmap <leader>c <esc>:'<,'>:CoffeeCompile<CR>
map <leader>c :CoffeeCompile<CR>


function! PasteAsCoffee()
  :read !pbpaste | js2coffee
endfunction
:command! PasteAsCoffee :call PasteAsCoffee()
map <leader>jc :PasteAsCoffee<CR>

