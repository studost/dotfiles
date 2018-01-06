" ~/.vimrc (configuration file for vim only)
" /home/studo/projects
" skeletons
"###################################################
"2015-02-14
":reg, "3p / "ay, "ap 
" 2011-06-28, UST
"set enc=iso-8859-1
"set fenc=iso-8859-1
"set termencoding=iso-8859-1
"indention
"set cindent
"set autoindent
set smartindent
"set indentexpr=on
"set tabstop=4
set expandtab
":%retab
set shiftwidth=4
set softtabstop=4
"incserach
set incsearch
set smartcase
set ignorecase
set nohlsearch

set number
syntax on
set showmatch

" Problems with underscores
"set list
"###################################################
"http://mamchenkov.net/wordpress/2004/05/10/vim-for-perl-developers/
set wrap
"set nowrap
"indention / /usr/share/doc/vim-common-6.1/docs/indent.txt 
"set wildchar=<TAB>
set bg=light
colorscheme desert
"colorscheme slate
"colorscheme morning
"colorscheme evening
"set bg=dark. and .set bg=light
"Stichwort-Ergänzung mit Ctrl-N & Ctrl-P (ctags *.p?)
"
"Folding configuration
"set foldmethod=marker
" Edit and uncomment next line if you want non-default marker
"set foldmarker="{{{,}}}"
"/usr/share/doc/vim-common-6.1/docs/usr_28.txt and /usr/share/doc/vim-common-6.1/docs/fold.txt.
" Marks
" mc & 'c
" /usr/share/doc/vim-common-6.1/docs/motion.txt
" This is for vertical indenting
set list
set listchars=tab:>-
"set listchars=tab:\|- 
"set listchars=tab:\|\ 
"NOTE the space char after last backslash.
" Blockcommenting mit Plugin ~/.vim/plugin/BlockComment.vim
" 2015-04-13, comments
" Tag first line with ma
" Move to the last line and issue the following ex command: :'a,. s/^/# / 
"
" Plugin TagList
" This is for taglist
let Tlist_Inc_Winwidth = 0
map <F3> :Tlist<CR>
" /usr/share/doc/vim-common-4.9/docs/tagsrch.txt.
" Plugin perl Compiler
" Use perl compiler for all *.pl and *.pm files.
"autocmd BufNewFile,BufRead *.p? compiler perl
" :make / :cnext / :cprevious / :clist
" check perl code with :make
" http://blogs.perl.org/users/ovid/2012/07/integrating-perlcritic-and-vim.html
" perlcritic -4 --quiet --verbose "%f:%l:%m\\n" check_psst_ccms_all_ng
" find lib/ -type f -name '*.pm' -exec perl -c {} 2>&1 \; | grep -v 'syntax OK' | tee errors.err
" quickfix for Perl error formats
" at check_mos_snmpdiff line 158.
" set errorformat+=%m\ at\ %f\ line\ %l
set errorformat+=%m\ at\ %f\ line\ %l\.


" This is for perldoc.vim
autocmd BufNewFile,BufRead *.pl map <F1> :Perldoc<cword><CR>
autocmd BufNewFile,BufRead *.pl setf perl
autocmd BufNewFile,BufRead *.pl let g:perldoc_program='/usr/bin/perldoc'
autocmd BufNewFile,BufRead *.pl source /home/studo/.vim/ftplugin/perl_doc.vim

autocmd FileType perl set makeprg=perl\ -wc\ %\ $*
" perlcritic is too much
" autocmd FileType perl set makeprg=perlcritic\ --quiet\ %\ $*
" perlcritic --quiet --verbose "%f:%l:%m\\n"
" autocmd FileType perl set errorformat=%f:%l:%m
autocmd FileType perl set autowrite
" 2016_09_18, PHP checker
nnoremap <buffer> <silent> <f5> :update<bar>sil! make<bar>cwindow<cr>
autocmd FileType php set makeprg=php\ -l\ %
autocmd FileType php set autowrite
" 2017_11_09
autocmd FileType py set makeprg=python3\ -m\ py_compile\ %
autocmd FileType py set autowrite
"set errorformat=%m\ in\ %f\ on\ line\ %l,%-GErrors\ parsing\ %f,%-G
" make tab in v mode ident code
vmap <tab> >gv
vmap <s-tab> <gv

" make tab in normal mode ident code
nmap <tab> I<tab><esc>
nmap <s-tab> ^i<bs><esc>

"2015-02-14
nmap <C-a> <Home>
nmap <C-e> <End>

" paste mode - this will avoid unexpected effects when you
" cut or copy some text from one window and paste it in Vim.
"set pastetoggle=<F11>

" comment/uncomment blocks of code (in vmode)
vmap <C-r> :s/^/#/gi<Enter>
vmap <C-u> :s/^#//gi<Enter>

" my perl includes pod
let perl_include_pod = 1

" syntax color complex things like @{${"foo"}}
let perl_extended_vars = 1

" Tidy selected lines (or entire file) with _t:
" vnoremap <C-t> :!perltidy -pbp -q<Enter>
nnoremap <C-t> :%!perltidy -q<Enter>
vnoremap <C-t> :!perltidy -q<Enter>

" Split
set splitbelow
set splitright
" ABBREV
" iab com /*<CR><CR>/<Up>
" iab default $a ||= 5;
iab slice my @slice = @letters[1, 4, 3];

" git, 2016_06_03
" http://mobile.osnews.com/printer.php?news_id=21556
set laststatus=2 " Enables the status line at the bottom of Vim
" set statusline=
" set statusline+=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
" set statusline+=%{GitBranch()}
" jamessan's
" set statusline=   " clear the tusline for when vimrc is reloaded
" set statusline+=%-3.3n\                   " buffer number
" set statusline+=%f\                       " file name
" set statusline+=%h%m%r%w                  " flags
" set statusline+=[%{strlen(&ft)t:'none'},  " filetype
" set statusline+=%{strlen(&fencfenc:&enc}, " encoding
" set statusline+=%{&fileformat}            " file format
" set statusline+=%=                        " right align
" set statusline+=%{synIDattr(sy(line('.'),col('.'),1),'name')}\  " highlight
" set statusline+=%b,0x%-8B\                " current char
" set statusline+=%-14.(%l,%c%V%%<%P        " offset

" vim-pathogen
execute pathogen#infect()

"vim lightline
set noshowmode
let g:lightline = {
   \ 'colorscheme': 'powerline',
   \ }
" let g:lightline = {
"           \ 'colorscheme': 'powerline',
"           \ }
set iskeyword+=_
" TIPPS
" vimdiff: 
" dp u. 
" do  # from the other pane
" :diffthis # files already opened
" :diffoff  # end diff mode
" 2015-04-13, Insert timestamps
" :r !date
" :$r !pwd      Insert the current working directory below the last line.
" show unsaved changes
" :w !diff % -
" :goto json offset
" :DiffSaved
" Copy buffer to system clipboard
" "+y
function! s:DiffWithSaved()
  let filetype=&ft
  diffthis
  vnew | r # | normal! 1Gdd
  diffthis
  exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
  endfunction
com! DiffSaved call s:DiffWithSaved()
" 2016_08_19, http://www.codeography.com/2010/07/13/json-syntax-highlighting-in-vim.html
autocmd BufNewFile,BufRead *.json set ft=javascript
" start gvim in max window
if has("gui_running")
  " GUI is running or is about to start.
  " Maximize gvim window.
  set lines=999 columns=999
endif
" ~/.vimrc ends here
