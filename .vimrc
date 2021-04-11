" setting
set nu
set et!
set wrap
set ts=4
syntax on
set shiftwidth=4
set softtabstop=4
set laststatus=2
set scrolloff=10
set cindent
set nobackup
set autoindent
set nocompatible
set noexpandtab
" set cursorline
set incsearch
set hlsearch
set smartcase
set cscopequickfix=c-,d-,e-,g-,i-,s-,t-
autocmd FileType make set noexpandtab
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

nmap <C-t> :colder<CR>:cc<CR>
nmap <C-j> :cnext<CR>
nmap <C-k> :cprev<CR>

" insert mode
imap jk <Esc>
if has('terminal')
	tmap JK <C-\><C-N>
	autocmd TerminalOpen * set nonu
endif

" cscope
if filereadable("cscope.out")
	cs add cscope.out
endif
nmap <C-l>o :cs add cscope.out<CR>
nmap <C-l>a :cs find a <C-R>=expand("<cword>")<CR><CR>
nmap <C-l>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-l>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-l>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-l>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-l>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-l>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-l>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-l>d :cs find d <C-R>=expand("<cword>")<CR><CR>
nmap <C-l>A :cs find a 
nmap <C-l>S :cs find s 
nmap <C-l>G :cs find g 
nmap <C-l>C :cs find c 
nmap <C-l>T :cs find t 
nmap <C-l>E :cs find e 
nmap <C-l>F :cs find f 
nmap <C-l>I :cs find i 
nmap <C-l>D :cs find d 
nmap <C-p> :cs find f 

nmap <C-l>h :browse oldfiles<CR>
nmap <C-l>t :vert term<CR>
nmap <C-l>T :term<CR>
nmap <C-l>b :ls<CR>

nmap <C-l>n :nohl<CR>
