" Vim syntax file
" Language:		TTstar
" Maintainer:   Matus Tejiscak <ziman@functor.sk>
" Last Change:  1 July 2015

if exists("b:current_syntax")
	finish
endif
let b:current_syntax = 'ttstar'

syntax clear

syn match ttTypeDecl "[a-zA-Z][a-zA-z0-9_']*\s\+:\s\+"
  \ contains=ttIdentifier

syn region ttParens matchgroup=ttDelimiter start="(" end=")" contains=TOP,ttTypeDecl
syn region ttBrackets matchgroup=ttDelimiter start="\[" end="]" contains=TOP,ttTypeDecl
syn region ttBlock matchgroup=ttDelimiter start="{" end="}" contains=TOP,ttTypeDecl

syn keyword ttKeyword case with where data let in postulate of foreign import Type

syn match ttNumber "\<[0-9]\+\>\|\<0[xX][0-9a-fA-F]\+\>\|\<0[oO][0-7]\+\>"
syn match ttDelimiter  "[,;]"
syn match ttType "\<[A-Z][a-zA-Z0-9_']*\>"
syn keyword ttTodo TODO FIXME XXX HACK contained
syn match ttLineComment "---*\([^-!#$%&\*\+./<=>\?@\\^|~].*\)\?$" contains=ttTodo,@Spell
syn region ttBlockComment start="{-" end="-}" contains=ttBlockComment,ttTodo,@Spell
syn match ttIdentifier "[a-zA-Z][a-zA-z0-9_']*" contained

highlight def link ttIdentifier Identifier
highlight def link ttBlock Statement
highlight def link ttNumber Number
highlight def link ttDelimiter Delimiter
highlight def link ttType Include
highlight def link ttLineComment Comment
highlight def link ttBlockComment Comment
highlight def link ttTodo Todo
