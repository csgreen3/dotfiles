set number
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set hlsearch
set ignorecase
set noswapfile
set guifont=Monospace\ 12

vmap // y/<C-R>"<CR>
vmap <C-Z> <Esc><C-W><C-W>
nnoremap <F2> <Esc>:call ToggleComment()<Return>

function ToggleComment()
let s:save_y = @y
normal 02"yyl
if @y == "/*"
    normal 02x$xx
else

    execute "normal 0i/*\<Esc>$a*/\<Esc>"
endif
let @y = s:save_y
unlet s:save_y
endfunction

set diffopt+=iwhite
