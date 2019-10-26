set nocompatible  " be iMproved, required
filetype off  " required
set exrc

set encoding=UTF-8

set rtp+=~/.vim/bundle/Vundle.vim

set rtp+=~/.fzf

call vundle#begin()

" ==== plugin manager
Plugin 'VundleVim/Vundle.vim'

" ==== helpers
Plugin 'vim-scripts/L9'

" ==== File tree
Plugin 'scrooloose/nerdtree'
Plugin 'junegunn/fzf.vim'
Plugin 'mileszs/ack.vim'

" ==== Completion
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'townk/vim-autoclose'

" ==== Git
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'

" ==== Vim testing
Plugin 'junegunn/vader.vim'

" ==== syntax helpers
"Plugin 'scrooloose/syntastic'
"Plugin 'tpope/vim-surround'
"Plugin 'mitsuhiko/vim-jinja'
Plugin 'rip-rip/clang_complete'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'vim-scripts/cSyntaxAfter'
"Plugin 'Valloric/vim-operator-highlight'
"Plugin 'ap/vim-css-color'
"Plugin 'Vimjas/vim-python-pep8-indent'
"Plugin 'python-rope/rope'
"Plugin 'python-rope/ropemode'
"Plugin 'python-rope/ropevim'
"Plugin 'klen/pylama'

" ==== moving / searching
Plugin 'easymotion/vim-easymotion'
Plugin 'ervandew/supertab'
Plugin 'wincent/terminus'



" Status bar on bottom
" Plugin 'bling/vim-airline'

" ==== PLUGIN THEMES
"Plugin 'morhetz/gruvbox'
Plugin 'dracula/vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'rj-white/waterfall.vim'

" ==== Markdown preview
Plugin 'iamcco/markdown-preview.vim'

call vundle#end()
"filetype plugin indent on

" ==== Colors and other basic settings

" This is the best colorschemes
" colorscheme goldenrod
"colorscheme mycontrast
"colorscheme more
colorscheme EmilsColorscheme

syntax enable
set st=4 sw=4 et
set shiftwidth=4
set tabstop=4
set t_Co=256

" ==== NERDTREE
let NERDTreeIgnore = ['__pycache__', '\.pyc$', '\.o$', '\.so$', '\.a$', '\.swp', '*\.swp', '\.swo', '\.swn', '\.swh', '\.swm', '\.swl', '\.swk', '\.sw*$', '[a-zA-Z]*egg[a-zA-Z]*', '.DS_Store']

let NERDTreeShowHidden=1
let g:NERDTreeWinPos="left"
let g:NERDTreeDirArrows=0
map <C-t> :NERDTreeToggle<CR>

" ==== Syntastic
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_javascript_checkers = ['eslint']
"let g:syntastic_javascript_mri_args = "--config=$HOME/.jshintrc"
"let g:syntastic_python_checkers = [ 'pylint', 'flake8', 'pep8', 'python']
"let g:syntastic_yaml_checkers = ['jsyaml']
"let g:syntastic_html_tidy_exec = 'tidy5'


" === flake8
"let g:flake8_show_in_file=1

" ==== snippets
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
"let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" ==== Easymotion
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_smartcase = 1
nmap f <Plug>(easymotion-s)

" ==== moving around
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

" ==== disable mouse
set mouse=
set ttymouse=

" ==== disable swap file warning
set shortmess+=A

" ==== custom commands
"command JsonPretty execute ":%!python -m json.tool"
"set secure

" === Fixing automatic curley braces
"inoremap {;<CR> {<CR>};<ESC>O
"inoremap {<CR> {<CR>}<ESC>O

" === Setting cindent to standard
set cindent
set cinoptions=g-1

" === Setting colors
" termguicolors needs to be uncommmented for some colorschemes, e.g. dracula, and commented for others like goldenrod
set termguicolors
" set cursorline
"set t_ut=

" === Transparancy
hi Normal guibg=NONE ctermbg=NONE

" === For nagivating between windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" === clang goto declaration
nnoremap gd <C-]>

" === Python syntastic mode = 3
" let g:syntastic_python_checkers=['flake8']

" === Clang Complete
let g:clang_library_path='/usr/lib/x86_64-linux-gnu'
set completefunc=ClangComplete
let g:clang_complete_auto = 0

" === Automatically closing preview windows after complete
"autocmd CompleteDone * pclose

" === fzf keybindings
:let mapleader=","
nmap ; :Buffers<Cr>
nmap <Leader>t :Files<Cr>
nmap <Leader>r :Tags<Cr>

" === ack silver searcher integration
let g:ackprg = 'ag --nogroup --nocolor --column'
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

" === Aditional C++ highlighting
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1

" === ctrlp mapping
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set wildignore+=*/build/*  
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

" === Need to find a proper mapping for this function
nnoremap <C-ø> : call HighlightNearCursor()<CR>
function HighlightNearCursor()
  if !exists("s:highlightcursor")
    match TODO /\k*\%#\k*/ 
    let s:highlightcursor=1
  else
    match None
    unlet s:highlightcursor
  endif
endfunction
":call HighlightNearCursor()

set hidden
autocmd! FileType c,cpp,java,php call CSyntaxAfter()

syntax match longOperators "++\|--"
hi longOperators guifg=green guibg=red
