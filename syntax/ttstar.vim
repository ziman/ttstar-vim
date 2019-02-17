" Vim syntax file
" Language:		TTstar
" Maintainer:   Matus Tejiscak <ziman@functor.sk>
" Last Change:  1 July 2015

if exists("b:current_syntax")
	finish
endif
let b:current_syntax = 'ttstar'

syntax clear

syn match ttTypeDecl "[a-zA-Z][a-zA-z0-9_']*\s\+[:\\]"
  \ contains=ttIdentifier,ttLambda

syn region ttParens matchgroup=ttDelimiter start="(" end=")" contains=TOP,ttTypeDecl
syn region ttBrackets matchgroup=ttDelimiter start="\[" end="]" contains=TOP,ttTypeDecl
syn region ttBlock matchgroup=ttDelimiter start="{" end="}" contains=TOP,ttTypeDecl

syn keyword ttData data where
syn keyword ttKeyword case with let in of forall do
syn keyword ttImport postulate foreign import

syn match ttLambda "\\"
syn match ttNumber "\<[0-9]\+\>\|\<0[xX][0-9a-fA-F]\+\>\|\<0[oO][0-7]\+\>"
syn match ttDelimiter  "[,.]\|->"
syn match ttType "\<[A-Z][a-zA-Z0-9_']*\>"
syn keyword ttTodo TODO FIXME XXX HACK contained
syn match ttLineComment "---*\([^-!#$%&\*\+./<=>\?@\\^|~].*\)\?$" contains=ttTodo,@Spell
syn region ttBlockComment start="{-" end="-}" contains=ttBlockComment,ttTodo,@Spell
syn match ttIdentifier "[a-zA-Z][a-zA-z0-9_']*" contained
syn region ttString start=+"+ skip=+\\\\\|\\"+ end=+"+ contains=@Spell
syn match ttColon ":[RE]:\|:"
syn match ttEquals "="

highlight link ttIdentifier Identifier
highlight link ttBlock Statement
highlight link ttNumber Number
highlight link ttDelimiter Delimiter
highlight link ttType Include
highlight link ttLineComment Comment
highlight link ttBlockComment Comment
highlight link ttTodo Todo
highlight link ttKeyword Keyword
highlight link ttString String
highlight link ttColon Delimiter
highlight link ttImport Type
highlight link ttLambda Keyword
highlight link ttData Type
highlight link ttEquals Keyword
