"Vim plugins (or plugins for vim)

"Plug 'tacahiroy/ctrlp-funky'
nnoremap <Leader>fu :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <Leader>uu :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
let g:ctrlp_funky_matchtype = 'path'
let g:ctrlp_funky_syntax_highlight = 1

"Plug 'kyazdani42/nvim-tree.lua'
let g:nvim_tree_quit_on_open = 1 "0 by default, closes the tree when you open a file
let g:nvim_tree_indent_markers = 1 "0 by default, this option shows indent markers when folders are open
let g:nvim_tree_git_hl = 1 "0 by default, will enable file highlight for git attributes (can be used without the icons).
let g:nvim_tree_highlight_opened_files = 1 "0 by default, will enable folder and file icon highlight for opened files/directories.
let g:nvim_tree_root_folder_modifier = ':~' "This is the default. See :help filename-modifiers for more options
let g:nvim_tree_auto_resize = 0 "1 by default, will resize the tree to its saved width when opening a file
let g:nvim_tree_disable_netrw = 0 "1 by default, disables netrw
let g:nvim_tree_hijack_netrw = 0 "1 by default, prevents netrw from automatically opening when opening directories (but lets you keep its other utilities)
let g:nvim_tree_add_trailing = 1 "0 by default, append a trailing slash to folder names
let g:nvim_tree_group_empty = 1 " 0 by default, compact folders that only contain a single folder into one node in the file tree
let g:nvim_tree_lsp_diagnostics = 1 "0 by default, will show lsp diagnostics in the signcolumn. See :help nvim_tree_lsp_diagnostics
let g:nvim_tree_hijack_cursor = 0 "1 by default, when moving cursor in the tree, will position the cursor at the start of the file on the current line
let g:nvim_tree_icon_padding = ' ' "one space by default, used for rendering the space between the icon and the filename. Use with caution, it could break rendering if you set an empty string depending on your font.
let g:nvim_tree_symlink_arrow = ' >> ' " defaults to ' ➛ '. used as a separator between symlinks' source and target.
let g:nvim_tree_update_cwd = 1 "0 by default, will update the tree cwd when changing nvim's directory (DirChanged event). Behaves strangely with autochdir set.
let g:nvim_tree_respect_buf_cwd = 1 "0 by default, will change cwd of nvim-tree to that of new buffer's when opening nvim-tree.


let g:nvim_tree_special_files = { 'README.md': 1, 'Makefile': 1, 'MAKEFILE': 1 } " List of filenames that gets highlighted with NvimTreeSpecialFile
let g:nvim_tree_icons = {
    \ 'default': '',
    \ 'symlink': '',
    \ 'git': {
    \   'unstaged': "✗",
    \   'staged': "✓",
    \   'unmerged': "",
    \   'renamed': "➜",
    \   'untracked': "★",
    \   'deleted': "",
    \   'ignored': "◌"
    \   },
    \ 'folder': {
    \   'arrow_open': "",
    \   'arrow_closed': "",
    \   'default': "",
    \   'open': "",
    \   'empty': "",
    \   'empty_open': "",
    \   'symlink': "",
    \   'symlink_open': "",
    \   },
    \   'lsp': {
    \     'hint': "",
    \     'info': "",
    \     'warning': "",
    \     'error': "",
    \   }
    \ }

nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>
set termguicolors " this variable must be enabled for colors to be applied properly
highlight NvimTreeFolderIcon guibg=blue

"Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
"Define mappings
autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
  nnoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action')
  nnoremap <silent><buffer><expr> d
  \ denite#do_map('do_action', 'delete')
  nnoremap <silent><buffer><expr> p
  \ denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> q
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> i
  \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> <Space>
  \ denite#do_map('toggle_select').'j'
endfunction

"Plug 'glepnir/dashboard-nvim'
" Default value is clap
let g:dashboard_default_executive ='fzf'
let g:dashboard_custom_shortcut={
\ 'last_session'       : 'SPC s l',
\ 'find_history'       : 'SPC f h',
\ 'find_file'          : 'SPC f f',
\ 'new_file'           : 'SPC c n',
\ 'change_colorscheme' : 'SPC t c',
\ 'find_word'          : 'SPC f a',
\ 'book_marks'         : 'SPC f b',
\ }

"Plug 'lambdalisue/battery.vim'
"Settings for battery:
let g:battery#update_tabline = 1    " For tabline.
let g:battery#update_statusline = 1 " For statusline.

"Plug 'lambdalisue/wifi.vim'
"Wifi settings:
let g:wifi#update_tabline = 1    " If wifi#component() is used in tabline.
let g:wifi#update_statusline = 1 " If wifi#component() is used in statusline.

""""""""""""""""""""""""""""""""""""""""
"Python plugins (or plugins for )
"""'
"Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' }
"Settings for numirias/semshi:

hi semshiLocal           ctermfg=209 guifg=#ff875f
hi semshiGlobal          ctermfg=214 guifg=#ffaf00
hi semshiImported        ctermfg=214 guifg=#ffaf00 cterm=bold gui=bold
hi semshiParameter       ctermfg=75  guifg=#5fafff
hi semshiParameterUnused ctermfg=117 guifg=#87d7ff cterm=underline gui=underline
hi semshiFree            ctermfg=218 guifg=#ffafd7
hi semshiBuiltin         ctermfg=207 guifg=#ff5fff
hi semshiAttribute       ctermfg=49  guifg=#00ffaf
hi semshiSelf            ctermfg=249 guifg=#b2b2b2
hi semshiUnresolved      ctermfg=226 guifg=#ffff00 cterm=underline gui=underline
hi semshiSelected        ctermfg=231 guifg=#ffffff ctermbg=161 guibg=#d7005f

hi semshiErrorSign       ctermfg=231 guifg=#ffffff ctermbg=160 guibg=#d70000
hi semshiErrorChar       ctermfg=231 guifg=#ffffff ctermbg=160 guibg=#d70000
sign define semshiError text=E> texthl=semshiErrorSign

function MyCustomHighlights()
    hi semshiGlobal      ctermfg=red guifg=#ff0000
endfunction
autocmd FileType python call MyCustomHighlights()

autocmd ColorScheme * call MyCustomHighlights()

nmap <silent> <leader>rr :Semshi rename<CR>

nmap <silent> <M-Tab> :Semshi goto name next<CR>
nmap <silent> <C-Tab> :Semshi goto name prev<CR>

nmap <silent> <leader>c :Semshi goto class next<CR>
nmap <silent> <leader>C :Semshi goto class prev<CR>

nmap <silent> <leader>f :Semshi goto function next<CR>
nmap <silent> <leader>F :Semshi goto function prev<CR>

nmap <silent> <leader>gu :Semshi goto unresolved first<CR>
nmap <silent> <leader>gp :Semshi goto parameterUnused first<CR>

nmap <silent> <leader>ee :Semshi error<CR>
nmap <silent> <leader>ge :Semshi goto error<CR>

autocmd ColorScheme * call MyCustomHighlights()

"Plug 'Vimjas/vim-python-pep8-indent'
let g:python_pep8_indent_hang_closing = 1
let g:python_pep8_indent_multiline_string = -1

"Plug 'dense-analysis/ale'
let g:python_pep8_indent_multiline_string= -1


""               """"""""""""""""""""""
" """""""""""" ""
"             ""
"    C++ plugins (or plugins for programming_languages)

"Plug 'preservim/tagbar'
nnoremap <silent> <c-+-t> :TagbarToggle<CR>
let g:tagbar_autoclose=0
let g:tagbar_position = 'right'
let g:tagbar_indent = 1
let g:tagbar_show_data_type = 1
let g:tagbar_show_tag_count = 1
let g:tagbar_status_func = 'TagbarStatusFunc'


                """""""""""""""""""""""""""""""""""""
                "
   """""""""""""""""""""""""""""""
""""
"       Java plugins (or plugins for java )
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Syntax_@#$^%^$Highliting:
"Plug 'noscript/cSyntaxAfter'
"Settings for cSyntaxAfter:
autocmd! FileType java call CSyntaxAfter()
if exists("*CSyntaxAfter")
  call CSyntaxAfter()
endif
syntax match longOperators "++\|--"
hi longOperators guifg=green guibg=red

"""""""""""""""""""""""""""""""
"'
"'HTML plugins (or plugins for HTML)

"Displaying colors in files:
"Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
let g:Hexokinase_highlighters = ['virtual']
"let g:Hexokinase_highlighters = ['sign_column']
"let g:Hexokinase_highlighters = ['foreground']
"let g:Hexokinase_highlighters = ['foregroundfull']
"let g:Hexokinase_highlighters = ['background']
"let g:Hexokinase_highlighters = ['backgroundfull']

"""""""''''''''''
""'Lua Plugins (or plugins for Lua)
"'
"Plug 'Yggdroot/indentLine'
let g:indentLine_setColors = 0
" Vim
let g:indentLine_color_term = 239

" none X terminal
let g:indentLine_color_tty_light = 7 " (default: 4)
let g:indentLine_color_dark = 1 " (default: 2)

" Background (Vim, GVim)
let g:indentLine_bgcolor_term = 202
let g:indentLine_bgcolor_gui = '#FF5F00'
let g:indentLine_char_list = ['┆']
let g:indentLine_concealcursor = 'inc'
let g:indentLine_conceallevel = 2

"CSharp
"Coc-omnisharp
let g:coc_global_extensions=[ 'coc-omnisharp']

"Gtest
let g:gtest#gtest_command = "~/dev/c++"
nmap <leader>gt :GTestRunUnderCursor<cr>


nnoremap <silent> <M-S> :TOpng<cr>
