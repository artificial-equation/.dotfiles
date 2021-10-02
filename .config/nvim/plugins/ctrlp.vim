let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
" set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux
let g:ctrlp_user_command = 'dir %s /-n /b /s /a-d'  " Windows

"detect OS {{{
function! OSX()
    return has('macunix')
endfunction
function! LINUX()
    return has('unix') && !has('macunix') && !has('win32unix')
endfunction
function! WINDOWS()
    return (has('win16') || has('win32') || has('win64'))
endfunction
"}}}

"use English for anything in vim
if WINDOWS()
    silent exec 'language english'
elseif OSX()
    silent exec 'language en_US'
else
    let s:uname = system("uname -s")
    if s:uname == "Darwin\n"
        " in mac-terminal
        silent exec 'language en_US'
    else
        " in linux-terminal
        silent exec 'language en_US.utf8'
    endif
endif

"vim settings {{{
"initialize default settings
let s:settings = {}
let s:settings.default_indent = 2
let s:settings.max_column = 120
let s:settings.autocomplete_method = 'neocomplcache'
let s:settings.enable_cursorcolumn = 0
let s:settings.colorscheme = 'jellybeans'
"if filereadable(expand("~/.vim/bundle/YouCompleteMe/python/ycm_core.*"))
if 1
    let s:settings.autocomplete_method = 'ycm'
elseif has('lua')
    let s:settings.autocomplete_method = 'neocomplete'
endif
let s:settings.plugin_groups = []
call add(s:settings.plugin_groups, 'core')
call add(s:settings.plugin_groups, 'web')
call add(s:settings.plugin_groups, 'javascript')
call add(s:settings.plugin_groups, 'ruby')
call add(s:settings.plugin_groups, 'python')
call add(s:settings.plugin_groups, 'scala')
call add(s:settings.plugin_groups, 'go')
call add(s:settings.plugin_groups, 'scm')
call add(s:settings.plugin_groups, 'editing')
call add(s:settings.plugin_groups, 'indents')
call add(s:settings.plugin_groups, 'navigation')
call add(s:settings.plugin_groups, 'unite')
call add(s:settings.plugin_groups, 'ctrlp')
call add(s:settings.plugin_groups, 'autocomplete')
call add(s:settings.plugin_groups, 'textobj')
call add(s:settings.plugin_groups, 'misc')
if OSX()
    call add(s:settings.plugin_groups, 'osx')
endif
if WINDOWS()
    call add(s:settings.plugin_groups, 'windows')
endif
if LINUX()
    call add(s:settings.plugin_groups, 'linux')
endif

let s:settings.plugin_groups_exclude = []

for s:group in s:settings.plugin_groups_exclude
    let s:i = index(s:settings.plugin_groups, s:group)
    if s:i != -1
        call remove(s:settings.plugin_groups, s:i)
    endif
endfor

call plug#begin('~/.vim/plugged')
    Plug 'tyru/open-browser.vim'
    Plug 'felixSchl/ctrlp-unity3d-docs'
    Plug 'voronkovich/ctrlp-nerdtree.vim'
    Plug 'elentok/ctrlp-objects.vim'
    Plug 'h14i/vim-ctrlp-buftab'
    Plug 'vim-scripts/ctrlp-cmdpalette'
    Plug 'mattn/ctrlp-windowselector'
    Plug 'the9ball/ctrlp-gtags'
    Plug 'thiderman/ctrlp-project'
    Plug 'mattn/ctrlp-google'
    Plug 'ompugao/ctrlp-history'
    Plug 'pielgrzym/ctrlp-sessions'
    Plug 'prabirshrestha/ctrlp-env'
    Plug 'tacahiroy/ctrlp-funky'
    Plug 'brookhong/k.vim'
    Plug 'mattn/ctrlp-launcher'
    Plug 'sgur/ctrlp-extensions.vim'
    Plug 'FelikZ/ctrlp-py-matcher'
    Plug 'JazzCore/ctrlp-cmatcher'
call plug#end() 
    let g:ctrlp_map = '<c-p>'
    let g:ctrlp_cmd = 'CtrlP'
    let g:ctrlp_working_path_mode = 'ra'
    let g:ctrlp_root_markers = 'pom.xml'
    let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:25,results:25'
    let g:ctrlp_show_hidden = 1
    "for caching
    let g:ctrlp_use_caching = 1
    let g:ctrlp_clear_cache_on_exit = 0
    let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp'
    "let g:ctrlp_map = ',,'
    "let g:ctrlp_open_multiple_files = 'v'
    set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.class
    let g:ctrlp_custom_ignore = {
      \ 'dir':  '\v[\/]\.(git|hg|svn)$',
      \ 'file': '\v\.(exe|so|dll)$',
      \ 'link': 'some_bad_symbolic_links',
      \ }
    le g:ctrlp_user_command = {
                \ 'types': {
                \ 1: ['.git', 'cd %s && git ls-files'],
                \ 2: ['.hg', 'hg --cwd %s locate -I .'],
                \ },
                \ 'fallback': 'ag %s -i --nocolor --nogroup --hidden
                \ --ignore out
                \ --ignore .git
                \ --ignore .svn
                \ --ignore .hg
                \ --ignore .DS_Store
                \ --ignore "**/*.pyc"
                \ -g ""'
                \ }

    let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch'  }


    "nnoremap <Leader>kk :CtrlPMixed<Cr>


    " comment for ctrlp-funky {{{
    nnoremap <Leader>fu :CtrlPFunky<Cr>
    " narrow the list down with a word under cursor
    nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
    let g:ctrlp_funky_syntax_highlight = 1
    " }}}

    "for ctrlp_nerdtree {{{
    let g:ctrlp_nerdtree_show_hidden = 1
    "}}}

    "for ctrlp_sessions{{{
    let g:ctrlp_extensions = ['funky', 'sessions' , 'k' , 'tag', 'mixed', 'quickfix', 'undo', 'line', 'changes', 'cmdline', 'menu']
    "}}}


    "for k.vim {{{
    nnoremap <silent> <leader>qe :CtrlPK<CR>
    "}}}

    " for ctrlp-launcher {{{
    nnoremap <Leader>pl :<c-u>CtrlPLauncher<cr>
    "}}}

    ""for ctrlp-cmatcher {{{

    "let g:ctrlp_max_files = 0
    "let g:ctrlp_match_func = {'match' : 'matcher#cmatch' }

    ""}}}

