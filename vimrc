" old simple formatting
" set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" ---- Minimal configuration:
set smartindent   " Do smart autoindenting when starting a new line
set shiftwidth=4  " Set number of spaces per auto indentation
set expandtab     " When using <Tab>, put spaces instead of a <tab> character

" ---- Good to have for consistency
set tabstop=8   " Number of spaces that a <Tab> in the file counts for
set smarttab    " At <Tab> at beginning line inserts spaces set in shiftwidth
set softtabstop=0

" ---- Bonus for proving the setting
" Displays '-' for trailing space, '>-' for tabs and '_' for non breakable space
set listchars=tab:>-,trail:-,nbsp:_
set list

" enable syntax highlighting
syntax on

" adjust the default colours for better contrast
set background=dark

" jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" folding
" set foldmethod=indent
