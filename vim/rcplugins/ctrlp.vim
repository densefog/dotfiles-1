Plug 'ctrlpvim/ctrlp.vim'

" Show match window at top of the screen
let g:ctrlp_match_window_bottom = 0

" Show matches in order from top to bottom
let g:ctrlp_match_window_reversed = 0

" Set max display height
let g:ctrlp_max_height=20

" Do not manage the working directory
let g:ctrlp_working_path_mode = "r"

" Custom prompt mappings
"   * ctrl-h opens in a horizontal split
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("h")': ['<c-x>', '<c-cr>', '<c-s>', '<c-h>']
    \ }

" Use ag for ctrlp
let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'
let g:ctrlp_use_caching = 0
