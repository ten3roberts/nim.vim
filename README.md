# Nim language support for Vim

This provides [Nim](http://nim-lang.org) language support for Vim:

* Syntax highlighting
* Auto-indent
* Build/jump to errors within Vim

The source of this script comes mainly from
http://www.vim.org/scripts/script.php?script_id=2632, which comes from a
modified python.vim (http://www.vim.org/scripts/script.php?script_id=790).
## Differences from upstream
This plugin changes some syntax highlighting that was missing like function call
highlighting and type highlighting.

It also removes the shipped IDE features like goto definition, completion, and project
navigation relying on external tools. I chose this to centralize the
goto-definition to lsp or external ctags to have the same functions work for
different languages.

makeprg and make are still supported

## Installation

Installing `nim.vim` is easy but first you need to have either pathogen plugin or vundle
installed.  If you already have one working then skip to the [final step](README.markdown#final-step).

## Pathogen
`git clone https://github.com/ten3roberts/nim.vim.git ~/.vim/bundle/nim.vim`

```
call pathogen#infect()
syntax on
filetype plugin indent on
```

## Vundle
```
call vundle#begin()
Plugin 'ten3roberts/nim.vim'
call vundle#end()
```

## vim-plug
```
call plug#begin()
Plug 'ten3roberts/nim.vim'
call plug#end()

```

## If something goes wrong

Since you are using vim, on source code which might have syntax problems,
invoking an external tool which may have its own share of bugs, sometimes stuff
just doesn't work as expected. In these situations if you want to debug the
issue you can type ``:e log://nim`` and a buffer will open with the log of
the plugin's invocations and nim's idetool answers.

This can give you a hint of where the problem is and allow you to easily
reproduce on the commandline the idetool parameters the vim plugin is
generating so you can prepare a test case for either this plugin or the nimrod
compiler.
