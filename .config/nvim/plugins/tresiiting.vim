lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  ignore_install = {  }, -- List of parsers to ignore installing
  highlight = {
    enable = true,              -- false will disable the whole extension
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
EOF


lua <<EOF
require'nvim-treesitter.configs'.setup {
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },
}
EOF


lua <<EOF
require'nvim-treesitter.configs'.setup {
  indent = {
    enable = true
  }
}
EOF


set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()


lua <<EOF
local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.zimbu = {
  install_info = {
    url = "~/projects/tree-sitter-zimbu", -- local path or git repo
    files = {"src/parser.c"}
  },
  filetype = "zu", -- if filetype does not agrees with parser name
  used_by = {"bar", "baz"} -- additional filetypes that use this parser
}
EOF


lua <<EOF
local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.typescript.used_by = "javascriptflow"
EOF

lua <<EOF
require'nvim-treesitter'.define_modules {
  my_cool_plugin = {
    attach = function(bufnr, lang)
      -- Do cool stuff here
    end,
    detach = function(bufnr)
      -- Undo cool stuff here
    end,
    is_supported = function(lang)
      -- Check if the language is supported
    end
  }
}
EOF


echo nvim_treesitter#statusline(90)  " 90 can be any length
module->expression_statement->call->identifier

local ts_utils = require 'nvim-treesitter.ts_utils'


