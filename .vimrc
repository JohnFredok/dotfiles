" ======================
"         VIMRC
" https://nickgerace.dev
" ======================

" General
syntax enable                  " Enable syntax checking
set number                     " Set line numbers
set noerrorbells               " Turn off bells
set backspace=indent,eol,start " Gives backspace IDE functionality

" Tab
set tabstop=4                  " Tab key gives 4 spaces
set shiftwidth=4               " Shifting gives 4 spaces
set softtabstop=4              " Tab key (soft) gives 4 spaces
set expandtab                  " Tab characters become 4 spaces

" Theme
set t_co=256                   " Enable 256 color
set background=light           " Light background

" Transparent background (no comment to the right)
hi Normal guibg=NONE ctermbg=NONE
