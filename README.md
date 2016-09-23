TODO
====
Fix exception handling and logging if syntastic is not installed

syntastic-local-eslint
======================

```bash
                 _            _   _            ~
 ___ _   _ _ __ | |_ __ _ ___| |_(_) ___       ~
/ __| | | | '_ \| __/ _` / __| __| |/ __|____  ~
\__ \ |_| | | | | || (_| \__ \ |_| | (_|_____| ~
|___/\__, |_| |_|\__\__,_|___/\__|_|\___|      ~
     |___/                                     ~
 _                 _        ~
| | ___   ___ __ _| |       ~
| |/ _ \ / __/ _` | |_____  ~
| | (_) | (_| (_| | |_____| ~
|_|\___/ \___\__,_|_|       ~
                            ~
           _ _       _    ~
  ___  ___| (_)_ __ | |_  ~
 / _ \/ __| | | '_ \| __| ~
|  __/\__ \ | | | | | |_  ~
 \___||___/_|_|_| |_|\__| ~
                          ~
```

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

Credits belong to
-----------------
http://nunes.io/notes/guide/vim-how-to-setup-eslint/
