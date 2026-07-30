"source ~/.vim/vim-plug/coc.vim
"
"call plug#begin('~/.vim/plugged')
"    Plug 'neoclide/coc.nvim', {'branch': 'release'}
"call plug#end()

set nocompatible

set backspace=indent,eol,start

set history=200		" keep 200 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set wildmenu		" display completion matches in a status line

set ttimeout		" time out for key codes
set ttimeoutlen=100	" wait up to 100ms after Esc for special key


set display=truncate

set scrolloff=5


set incsearch


set nrformats-=octal

" Don't use Q for Ex mode, use it for formatting.  Except for Select mode.
" Revert with ":unmap Q".
map Q gq
sunmap Q


inoremap <C-U> <C-G>u<C-U>

set mouse=a

" Revert with ":syntax off".
syntax on

" ===== SET =====

set number            " show line numbers
set relativenumber    " show relative line numbers

set tabstop=2         " number of visual spaces per TAB
set softtabstop=2     " number of spaces in tab when editing
set shiftwidth=2      " number of spaces to use for autoindent
set expandtab         " tabs are spaces

set smartindent       " autoindent new lines
set autoindent        " autoindent new lines

set nowrap            " don't wrap lines

set hlsearch          " highlight search results
set incsearch         " incremental search

set colorcolumn=80    " highlight column 80

set nomodeline        " disable modeline

set splitbelow        " open new split below
set splitright        " open new split right
set termguicolors     " enable 24-bit color
let g:markdown_fenced_languages = ['mlir']
" colorscheme industry

" ===== REMAP =====
let g:mapleader = "\<Space>" " set leader key to space

nnoremap <leader>pv :Ex<CR>        " open file browser

xnoremap <leader>p "_dP            " paste over visual selection
nnoremap <leader>d "_d             " delete without yanking
vnoremap <leader>d "_d             " delete without yanking

nnoremap <leader>y "+y             " copy to system clipboard
nnoremap <leader>Y "+Y             " copy to system clipboard
vnoremap <leader>y "+y             " copy to system clipboard
vnoremap <leader>Y "+Y             " copy to system clipboard

vnoremap <S-j> :m '>+1<CR>gv=gv    " move line down
vnoremap <S-k> :m '<-2<CR>gv=gv    " move line up

nnoremap <leader>s :%s/\<<C-r>=expand('<cword>')<CR>\>//gI<Left><Left><Left>

nnoremap <C-c><C-c> :nohlsearch<CR> " clear search highlight

vnoremap <silent> < <gv
vnoremap <silent> > >gv
 
nnoremap <C-b> :Ex<CR>

" ===== GREP SETTINGS =====
set grepprg=rg\ --vimgrep
set grepformat=%f:%l:%c:%m

function! GrepKeepPosition(...)
  let l:win = win_getid()
  let l:view = winsaveview()
  let l:buf = bufnr('%')

  silent execute 'grep' join(a:000)

  call win_gotoid(l:win)
  call winrestview(l:view)
  execute 'buffer' l:buf

  copen
endfunction

" Grep with a specified pattern and keep the cursor position
command! -nargs=+ G call GrepKeepPosition(<f-args>) " command! -nargs=+ G silent execute 'grep' <q-args> | copen
" Grep with the current word under the cursor
nnoremap <leader>g :G <C-R>=expand("<cword>")<CR><CR> " nnoremap <leader>g :silent grep <C-R>=expand("<cword>")<CR> \| copen<CR>


" ===== COPILOT SETTINGS =====

" Disable Copilot by default
let g:copilot_enabled = 0
" Enable Copilot for all filetypes
let g:copilot_filetypes = {
      \ '*': 1
      \ }
" Enable Copilot
nnoremap <leader>ce :Copilot enable<CR>
" Disable Copilot
nnoremap <leader>cd :Copilot disable<CR>
" Accept Copilot suggestion word by word in insert mode
inoremap <silent><C-l> <Plug>(copilot-accept-word)





" Toggle comments based on filetype
function! ToggleComment() range
    let ft = &filetype

    " Comment markers
    let markers = {
        \ 'python': '#',
        \ 'sh': '#',
        \ 'bash': '#',
        \ 'vim': '"',
        \ 'ruby': '#',
        \ 'perl': '#',
        \ 'javascript': '//',
        \ 'typescript': '//',
        \ 'java': '//',
        \ 'c': '//',
        \ 'cpp': '//',
        \ 'rust': '//',
        \ 'go': '//',
        \ 'php': '//',
        \ 'css': '/*',
        \ 'html': '<!--',
        \ 'xml': '<!--',
        \ 'tex': '%',
        \ }

    if !has_key(markers, ft)
        echo "Unsupported filetype: " . ft
        return
    endif

    let comment = markers[ft]

    let start = a:firstline
    let end = a:lastline

    " Check if all lines are already commented
    let all_commented = 1

    for lnum in range(start, end)
        let line = getline(lnum)
        if line =~ '^\s*' . escape(comment, '/*') . '\s*'
            continue
        else
            let all_commented = 0
            break
        endif
    endfor

    " Toggle
    for lnum in range(start, end)
        let line = getline(lnum)

        if all_commented
            " Remove comment
            call setline(
                \ lnum,
                \ substitute(line, '^\(\s*\)' . escape(comment, '/*') . '\s\?', '\1', '')
                \ )
        else
            " Add comment
            call setline(
                \ lnum,
                \ substitute(line, '^\s*', '&' . comment . ' ', '')
                \ )
        endif
    endfor
endfunction

vnoremap gcc :call ToggleComment()<CR>
nnoremap gcc :call ToggleComment()<CR>

