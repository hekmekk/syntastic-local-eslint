syntastic-local-eslint
======================

Use your local installation of eslint with [syntastic](https://github.com/scrooloose/syntastic "scrooloose/syntastic").

Installation
------------
```vim
Plug 'hekmekk/syntastic-local-eslint'
```

Dependencies
------------
* `scrooloose/syntastic`

How it works
------------
* clear `g:syntastic_javascript_checkers`
* look for `eslint` within...
	* first, your local project: `./node_modules/.bin`
	* then your globally installed packages: `/node_modules/.bin`
* set `g:syntastic_eslint_exec` accordingly

Credits
-------
Eduardo Nunes basically wrote this snippet [here](http://nunes.io/notes/guide/vim-how-to-setup-eslint/ "Vim: How to setup local eslint (or any other linter)?").
