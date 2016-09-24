function! s:checkJavaScriptLinter(filepath, linter)
	if exists('b:syntastic_checkers')
		return
	endif
	if filereadable(a:filepath)
		let b:syntastic_checkers = [a:linter]
		let {'b:syntastic_' . a:linter . '_exec'} = a:filepath
	endif
endfunction

function! s:setupJavaScriptLinter()
	try
		let g:syntastic_javascript_checkers = []
		let l:current_folder = expand('%:p:h')
		let l:bin_folder = fnamemodify(syntastic#util#findFileInParent('package.json', l:current_folder), ':h')
		let l:bin_folder = l:bin_folder . '/node_modules/.bin/'
		call s:checkJavaScriptLinter(l:bin_folder . 'standard', 'standard')
		call s:checkJavaScriptLinter(l:bin_folder . 'eslint', 'eslint')
	catch /.*/
		" fail silently
	endtry
endfunction

autocmd FileType javascript call s:setupJavaScriptLinter()
