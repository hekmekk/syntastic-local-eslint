function! CheckJavaScriptLinter(filepath, linter)
	if exists('b:syntastic_checkers')
		return
	endif
	if filereadable(a:filepath)
		let b:syntastic_checkers = [a:linter]
		let {'b:syntastic_' . a:linter . '_exec'} = a:filepath
	endif
endfunction

function! SetupJavaScriptLinter()
	try
		let l:current_folder = expand('%:p:h')
		let l:bin_folder = fnamemodify(syntastic#util#findFileInParent('package.json', l:current_folder), ':h')
		let l:bin_folder = l:bin_folder . '/node_modules/.bin/'
		call CheckJavaScriptLinter(l:bin_folder . 'standard', 'standard')
		call CheckJavaScriptLinter(l:bin_folder . 'eslint', 'eslint')
	catch /.*/
		" let warning = [{'type': 'WARN', 'text': '''syntastic-local-eslint'' depends on ''scrooloose/syntastic'''}]
		" call setqflist(warning)
		" echoerr v:exception
	endtry
endfunction

let g:syntastic_javascript_checkers = []

autocmd FileType javascript call SetupJavaScriptLinter()
