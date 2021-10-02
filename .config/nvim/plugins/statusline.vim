let g:lightline = {
      \ 'colorscheme': 'apprentice',
      \ 'component_function': {
      \ 'filename': 'LightlineFilename',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename', 'modified', 'method' ] ]
      \ },
      \ 'component_function': {
      \   'method': 'NearestMethodOrFunction'
      \ }
      \ },
      \ }
      \ 

