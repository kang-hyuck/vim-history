" Vim syntax file
" Antlr:	ANTLR, Another Tool For Language Recognition <www.antlr.org>
" Maintainer:	Mathieu Clabaut <mathieu.clabaut@free.fr>
" Last change:	2000 Nov 04
" Original:	Comes from JavaCC.vim


" This syntac file is a first attempt. It is far from perfect...

" Uses java.vim, and adds a few special things for JavaCC Parser files.
" Those files usually have the extension  *.jj

" source the java.vim file
source <sfile>:p:h/java.vim

"remove catching errors caused by wrong parenthesis (does not work in antlr
"files) (first define them in case they have not been defined in java)
syn match	javaParen "--"
syn match	javaParenError "--"
syn match	javaInParen "--"
syn match	javaError2 "--"
syn clear	javaParen
syn clear	javaParenError
syn clear	javaInParen
syn clear	javaError2

" remove function definitions (they look different) (first define in
" in case it was not defined in java.vim)
"syn match javaFuncDef "--"
"syn clear javaFuncDef
"syn match javaFuncDef "[a-zA-Z][a-zA-Z0-9_. \[\]]*([^-+*/()]*)[ \t]*:" contains=javaType
" syn region javaFuncDef start=+t[a-zA-Z][a-zA-Z0-9_. \[\]]*([^-+*/()]*,[ 	]*+ end=+)[ \t]*:+

syn keyword antlrPackages options language buildAST
syn match antlrPackages "PARSER_END([^)]*)"
syn match antlrPackages "PARSER_BEGIN([^)]*)"
syn match antlrSpecToken "<EOF>"
" the dot is necessary as otherwise it will be matched as a keyword.
syn match antlrSpecToken ".LOOKAHEAD("ms=s+1,me=e-1
syn match antlrSep "[|:]\|\.\."
syn keyword antlrActionToken TOKEN SKIP MORE SPECIAL_TOKEN
syn keyword antlrError DEBUG IGNORE_IN_BNF

" The default highlighting.
hi def link antlrSep Statement
hi def link antlrPackages Statement

let b:current_syntax = "antlr"

" vim: ts=8