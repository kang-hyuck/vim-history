" Vim syntax file
" Language:	Vim help file
" Maintainer:	Bram Moolenaar (Bram@vim.org)
" Last Change:	2001 Jan 15

" Quit when a syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

syn match helpHeadline		"^[A-Z ]\+[ ]\+\*"me=e-1
syn match helpSectionDelim	"^=\{3,}.*==$"
syn match helpSectionDelim	"^-\{3,}.*--$"
syn region helpExample		matchgroup=helpIgnore start=" >$" start="^>$" end="^[^ \t]"me=e-1 end="^<"
if has("ebcdic")
  syn match helpHyperTextJump	"|[^"*|]\+|"
  syn match helpHyperTextEntry	"\*[^"*|]\+\*\s"he=e-1
  syn match helpHyperTextEntry	"\*[^"*|]\+\*$"
else
  syn match helpHyperTextJump	"|[#-)!+-~]\+|"
  syn match helpHyperTextEntry	"\*[#-)!+-~]\+\*\s"he=e-1
  syn match helpHyperTextEntry	"\*[#-)!+-~]\+\*$"
endif
syn match helpVim		"Vim version [0-9.a-z]\+"
syn match helpVim		"VIM REFERENCE.*"
syn match helpOption		"'[a-z]\{2,\}'"
syn match helpOption		"'t_..'"
syn match helpHeader		".*\~$"me=e-1 nextgroup=helpIgnore
syn match helpIgnore		"." contained
syn keyword helpNote		note Note NOTE note: Note: NOTE:
syn match helpSpecial		"\<N\>"
syn match helpSpecial		"(N\>"ms=s+1
syn match helpSpecial		"\[N]"
" avoid highlighting N  N in help.txt
syn match helpSpecial		"N  N"he=s+1
syn match helpSpecial		"Nth"me=e-2
syn match helpSpecial		"N-1"me=e-2
syn match helpSpecial		"{[-a-zA-Z0-9'":%#=[\]<>.]\+}"
syn match helpSpecial		"\s\[[-a-zA-Z0-9_]\{2,}]"ms=s+1
syn match helpSpecial		"<[-a-zA-Z0-9_]\+>"
syn match helpSpecial		"<[SCM]-.>"
syn match helpSpecial		"\[range]"
syn match helpSpecial		"\[line]"
syn match helpSpecial		"\[count]"
syn match helpSpecial		"\[offset]"
syn match helpSpecial		"\[cmd]"
syn match helpSpecial		"\[num]"
syn match helpSpecial		"\[+num]"
syn match helpSpecial		"\[-num]"
syn match helpSpecial		"CTRL-."
syn match helpSpecial		"CTRL-Break"
syn match helpSpecial		"CTRL-{char}"
syn region helpNotVi		start="{Vi[: ]" start="{not" start="{only" end="}" contains=helpLeadBlank,helpHyperTextJump
syn match helpLeadBlank		"^\s\+" contained

syn sync minlines=40


" The default highlighting.
hi def link helpIgnore		Ignore
hi def link helpHyperTextJump	Subtitle
hi def link helpHyperTextEntry	String
hi def link helpHeadline	Statement
hi def link helpHeader		PreProc
hi def link helpSectionDelim	PreProc
hi def link helpVim		Identifier
hi def link helpExample		Comment
hi def link helpOption		Type
hi def link helpNotVi		Special
hi def link helpSpecial		Special
hi def link helpNote		Todo
hi def link Subtitle		Identifier

let b:current_syntax = "help"

" vim: ts=8
