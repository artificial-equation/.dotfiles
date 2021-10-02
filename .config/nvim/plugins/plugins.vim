
call plug#begin(stdpath('data') . '/plugged')
"Notetaking:
           Plug 'vimwiki/vimwiki'
           Plug 'xolox/vim-notes'
           Plug 'fmoralesc/vim-pad'


"Windows:
        Plug 'gauteh/vim-cppman'
        Plug 'jmckiern/vim-shoot', { 'do': '\"./install.py\" chromedriver' }

"Productivity:
             Plug 'jiangmiao/auto-pairs'
             Plug 'voldikss/vim-floaterm'
             Plug 'tyru/open-browser.vim'

"Syntax_%$#ff875fHighliting:
                           Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
                           Plug 'nvim-treesitter/nvim-treesitter-textobjects'
"For Navigation:
                Plug 'kyazdani42/nvim-tree.lua'
                Plug 'tacahiroy/ctrlp-funky'
                Plug 'kien/ctrlp.vim'
                Plug 'antoinemadec/FixCursorHold.nvim' "required to use fern.vim for neovim users
                Plug 'mcchrish/nnn.vim'
                Plug 'eiginn/netrw'
"Commenting:
            Plug 'tpope/vim-commentary'
            Plug 'preservim/nerdcommenter'

"LSP(Language Server Protocol:

                             Plug 'liuchengxu/vista.vim'   "View tags and LSP symbols in a sidebar, Finder for tags and LSP symbols

                             Plug 'autozimu/LanguageClient-neovim', {
                                                   \ 'branch': 'next',
                                                   \ 'do': 'bash install.sh',
                                                   \ }

                                                            "Language Servers are not easy to install. Visual Studio Code provides easy ways to install and update Language Servers and Language Server Client.
                                                            "This plugin provides the same feature for Vim.

                             Plug 'neovim/nvim-lspconfig'
                             Plug 'natebosch/vim-lsc'

"Color~~Schemes:
                Plug 'navarasu/onedark.nvim'
                Plug 'junegunn/seoul256.vim'
                Plug 'morhetz/gruvbox'
                Plug 'altercation/vim-colors-solarized'
                Plug 'sainnhe/everforest'


"Interface shit(i think its named gui):
                                      Plug 'mhinz/vim-startify'  "This plugin provides a start screen for Vim and Neovim

                                      Plug 'mhinz/vim-signify'

                                      Plug 'liuchengxu/vim-clap'

                                      " Plug 'hoob3rt/lualine.nvim'

                                      Plug 'itchyny/lightline.vim'

                                      Plug 'kyazdani42/nvim-web-devicons'  "A lua fork of vim-devicons. This plugin provides the same icons as well as colors for each icon

                                      Plug 'lambdalisue/battery.vim' "a statusline or tabline component for Neovim/Vim. It uses a job feature of
                                                                       "Neovim/Vim to retrieve battery informations so that
                                                                       "the plugin won't block the main thread

                                          Plug 'dkarter/bullets.vim'

"Keyboard ahit:
              Plug 'ervandew/supertab'

"Python

"Synatx%&ssfaHighlightin*G:
                          Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' }
"L***********inters:
                   Plug 'dense-analysis/ale'
"Browse tags:
            Plug 'liuchengxu/vista.vim'
"Text Obj. and mmoothiooonns:
                            Plug 'jeetsukumaran/vim-pythonsense'
"Indentation:
            Plug 'Vimjas/vim-python-pep8-indent'

"AuTO@@@#$COMpleTION^^^^^%$%:
                             Plug 'neoclide/coc.nvim', { 'branch': 'master', 'do': 'yarn install --frozen-lockfile' }

"cpp

"sYn#^$^%tac*&hI^&li21Hing:
                         Plug 'bfrg/vim-cpp-modern'
                         Plug 'nathanaelkane/vim-indent-guides'

"Buidling and Ruuunnnninnngs:
                            Plug 'cdelledonne/vim-cmake'
"Testing Testing TESTING:
                        Plug 'alepez/vim-gtest'
"Snippetsato:
            Plug 'SirVer/ultisnips' "UltiSnips - The ultimate snippet solution for Vim. Send pull requests to SirVer/ultisnips!
"Switching between ex.cpp and ex.h file:
                                       Plug 'derekwyatt/vim-fswitch'
"Tags:
     Plug 'ludovicchabant/vim-gutentags'
     Plug 'liuchengxu/vista.vim'
"Debuging:
         Plug 'puremourning/vimspector', {
  \ 'do': 'python3 install_gadget.py --enable-vscode-cpptools'
  \ }


"cs
"Auutofdsojisj:
             Plug 'OmniSharp/omnisharp-vim'

"perl
"Support:
        Plug 'vim-perl/vim-perl', { 'for': 'perl', 'do': 'make clean carp dancer highlight-all-pragmas moose test-more try-tiny' }
"autov:
      Plug 'c9s/perlomni.vim'

" Math:
    Plug 'lervag/vimtex'
    Plug 'vim-latex/vim-latex'
call plug#end()

