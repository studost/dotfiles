" ~/.vimrc (configuration file for vim only)
" /home/studo/projects
" skeletons
function! SKEL_spec()
	0r /usr/share/vim/current/skeletons/skeleton.spec
	language time en_US
	let login = system('whoami')
	if v:shell_error
	   let login = 'unknown'
	else
	   let newline = stridx(login, "\n")
	   if newline != -1
		let login = strpart(login, 0, newline)
	   endif
	endif
	let hostname = system('hostname -f')
	if v:shell_error
	    let hostname = 'localhost'
	else
	    let newline = stridx(hostname, "\n")
	    if newline != -1
		let hostname = strpart(hostname, 0, newline)
	    endif
	endif
	exe "%s/specRPM_CREATION_DATE/" . strftime("%a\ %b\ %d\ %Y") . "/ge"
	exe "%s/specRPM_CREATION_AUTHOR_MAIL/" . login . "@" . hostname . "/ge"
	exe "%s/specRPM_CREATION_NAME/" . expand("%:t:r") . "/ge"
endfunction
autocmd BufNewFile	*.spec	call SKEL_spec()
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
" git, 2016_06_03
" http://mobile.osnews.com/printer.php?news_id=21556
set laststatus=2 " Enables the status line at the bottom of Vim
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

