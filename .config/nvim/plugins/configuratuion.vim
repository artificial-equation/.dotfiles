let g:mapleader = " "
set clipboard+=unnamedplus
set formatoptions-=cro                  " Stop newline continution of comments
set exrc
"Search"
set nohlsearch                    " highlight search terms
set incsearch                   " show search matches as you type
"GUI stuff that should Excist :)
set scrolloff=8
set signcolumn=yes:3
set hidden
"GUI STUFF THAT SHOULD BE RIPPED OUT OF THE HUMAN EXISTANCE
"NOTES: AM AINT WRITING NOTES FOR THIS ANY OF THIS SHIT
set guicursor=
set mouse=                             " Enable your mouse
"AutocompletioN(oHHHHHHHHH MY FUCKING GOD)
set completeopt=menuone,noinsert
"Sidebar(i know that there is editor layout but i llove to be specefic)
set number
set relativenumber
"set relativenumber
"Alertation or Warings (or if you like it after a little bit, notifications)
set noerrorbells      "
set shortmess+=c      "Don't pass messages to |ins-completion-menu|.
" Editor layout {{{
set cursorcolumn
set cursorline
hi CursorLIne cterm=None ctermbg=241 ctermfg=None guibg=None guifg=None
set termencoding=utf-8
set encoding=utf-8
set fileencoding=utf-8                  " The encoding written to file
set lazyredraw                  " don't update the display while executing macros
set laststatus=2                " tell VIM to always put a status line in, even if there is only one window
set cmdheight=2                 " use a status bar that is 1 rows high
set ruler                       " Shows the current line number at the bottom-right
                                " of the screen.
set showtabline=2               " Always show tabs
set noshowmode                  " We don't need to see things like -- INSERT -- anymore
au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC
"Keyboard Behavior
set backspace=indent,eol,start  " Proper backspace behavior.
    "Files and directory settings(yeah i know, they are both of those settings)
     set undodir=~/.vim/undodir
    "Files settings
     set noswapfile
     set nowrap
     set undofile
     set nobackup 
     set nowritebackup
"Kinda essentials
set autoindent          " auto indenting
set history=100         " keep 100 lines of history
set ruler               " show the cursor position
"Command-Line mode
set wildmenu             " Great command-line completion, use `<Tab>` to move
set wildignorecase
set wildmode
"Colors for vim
set t_Co=256                            " Support 256 colors
" T     A       B       S "
set tabstop=4           " a tab is four spaces
set softtabstop=4       " when hitting <BS>, pretend like a tab is removed, even if spaces
set expandtab           " The expandtab property will ensure that when you hit tab it will actually use spaces
set shiftwidth=4

"Cool-Shit
set iskeyword+=-                      	" treat dash separated words as a word text object"
"Format
set formatoptions-=cro                  " Stop newline continution of comments
"Time
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set updatetime=300                      " Faster completion
"""INdenting"""
"Notes : When having smartindent on you also should have autoindent on.
set smartindent         " autoindent essentially tells vim to apply the indentation of the current line to the next
set autoindent          " always set autoindenting on
set copyindent          " copy the previous indentation on autoindenting
set ignorecase

nnoremap <Leader>H :call<SID>LongLineHLToggle()<cr>
hi OverLength ctermbg=none cterm=none
match OverLength /\%>80v/
fun! s:LongLineHLToggle()
 if !exists('w:longlinehl')
  let w:longlinehl = matchadd('ErrorMsg', '.\%>80v', 0)
  echo "Long lines highlighted"
 else
  call matchdelete(w:longlinehl)
  unl w:longlinehl
  echo "Long lines unhighlighted"
 endif
endfunction

syntax on               " syntax highlighting
filetype plugin on      " use the file type plugins

au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC
