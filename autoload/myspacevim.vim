function! myspacevim#before() abort
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

	" Coc
	call SpaceVim#custom#SPCGroupName(['g'], '+Coc goto')
	call SpaceVim#custom#SPC('nore', ['g', 'd'], "call CocAction('jumpDefinition')", 'Coc goto definition', 1)
	call SpaceVim#custom#SPC('nore', ['g', 'y'], "call CocAction('jumpDefinition')", 'Coc goto type definition', 1)
	call SpaceVim#custom#SPC('nore', ['g', 'i'], "call CocAction('jumpDefinition')", 'Coc goto implement', 1)
	call SpaceVim#custom#SPC('nore', ['g', 'r'], "call CocAction('jumpDefinition')", 'Coc goto reference', 1)

	" gerneral
	nnoremap Y <C-v>$y
	imap {<CR> {<CR>}<ESC>O
endfunction

function! myspacevim#after() abort
	" set updatetime=100
	set scrolloff=10
	set et!
	set mouse=
	let g:gtags_auto_update = 0
	autocmd FileType make set noexpandtab

	let s:coc_extensions = [
				\ 'coc-marketplace'
				\ 'coc-dictionary',
				\ 'coc-json',
				\ 'coc-ultisnips',
				\ 'coc-tag',
				\ 'coc-git',
				\ 'coc-spell-checker',
				\ 'coc-yank',
				\]
	for extension in s:coc_extensions
		call coc#add_extension(extension)
	endfor
endfunction
