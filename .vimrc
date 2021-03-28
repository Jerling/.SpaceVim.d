" setting
set nu
set et!
set wrap
set ts=4
set laststatus=2
set scrolloff=10
set cindent
set nocompatible
" set cursorline
set incsearch
set hlsearch
set smartcase
set cscopequickfix=c-,d-,e-,g-,i-,s-,t-
autocmd FileType make set noexpandtab
autocmd TerminalOpen * set nonu
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

nmap <C-t> :colder<CR>:cc<CR>
nmap <C-n> :cnext<CR>
nmap <C-p> :cprev<CR>

" insert mode
imap jk <Esc>
tmap JK <C-\><C-N>
imap {<CR> {<CR>}<ESC>O
inoremap ' ''<ESC>i
inoremap " ""<ESC>i
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {<CR>}<ESC>O

" cscope
if filereadable("cscope.out")
	cs add cscope.out
endif
nmap <C-k>a :cs add cscope.out<CR>
nmap <C-k>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-k>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-k>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-k>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-k>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-k>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-k>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-k>d :cs find d <C-R>=expand("<cword>")<CR><CR>
nmap <C-k>F :cs find f 

"
nmap <C-l>h :browse oldfiles<CR>
nmap <C-l>t :vert term<CR>
nmap <C-l>T :term<CR>
nmap <C-l>b :ls<CR>
