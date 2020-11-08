function! myspacevim#before() abort
	autocmd vimenter * NERDTreeClose

	" vim-clap
	call SpaceVim#custom#SPC('nore', ['b', 'b'], 'Clap buffers', 'List buffers', 1)
	call SpaceVim#custom#SPC('nore', ['f', 'e'], 'Clap filer', 'explore projects', 1)
	call SpaceVim#custom#SPC('nore', ['f', 'r'], 'Clap history', 'history files', 1)
	call SpaceVim#custom#SPC('nore', ['f', 'f'], 'Clap files ++finder=rg --no-ignore --hidden --files', 'Find file', 1)
	call SpaceVim#custom#SPC('nore', ['f', 'g'], 'Clap grep', 'Find grep', 1)
	call SpaceVim#custom#SPC('nore', ['f', 'G'], 'Clap grep ++query=<cword>', 'Find grep word', 1)
	call SpaceVim#custom#SPC('nore', ['f', 'a'], 'Clap grep2', 'Find grep', 1)
	call SpaceVim#custom#SPC('nore', ['f', 'A'], 'Clap grep2 ++query=<cword>', 'Find grep2 word', 1)
	call SpaceVim#custom#SPC('nore', ['f', 'w'], 'Clap windows', 'Find windows', 1)
	call SpaceVim#custom#SPC('nore', ['f', 'l'], 'Clap loclist', 'Find loclists', 1)
	call SpaceVim#custom#SPC('nore', ['f', 'y'], 'Clap yanks', 'Find yanks', 1)
	call SpaceVim#custom#SPC('nore', ['m', 'm'], 'Clap marks', 'Find marks', 1)
	call SpaceVim#custom#SPC('nore', ['c', 'c'], 'Clap command', 'Clap command', 1)
	" vist
	call SpaceVim#custom#SPC('nore', ['t', 'v'], 'Vista!!', 'Toggle vista', 1)
	" any-jump
	call SpaceVim#custom#SPC('nore', ['j', 'a'], 'AnyJump', 'Any jump', 1)
	call SpaceVim#custom#SPC('nore', ['j', 'A'], 'AnyJumpBack', 'Any jump back', 1)
	call SpaceVim#custom#SPC('nore', ['j', 'r'], 'AnyJumpLastResults', 'Any jump last results', 1)
	" vimagit
	call SpaceVim#custom#SPCGroupName(['g'], '+Git')
	call SpaceVim#custom#SPC('nore', ['g', 'g'], 'Magit', 'Vimagit', 1)
	" coc
	call SpaceVim#custom#SPC('nore', ['c', 'm'], 'CocCommand', 'Coc command', 1)
	nnoremap Y <C-V>$y
endfunction

function! myspacevim#after() abort
  set updatetime=100
  set scrolloff=10
  set et!
endfunction
