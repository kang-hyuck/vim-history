" Vim syntax file
" Language:	"Robots.txt" files
" Robots.txt files indicate to WWW robots which parts of a web site should not be accessed.
" Maintainer:	Dominique St�phan (dstephan@my-deja.com)
" URL: http://www.geocities.com/SiliconValley/Bit/1809/vim/syntax/robots.zip
" Last change:	2000 Aug 20

" clear any unwanted syntax defs
syn clear

" shut case off
syn case ignore

" Comment
syn match  robotsComment	"#.*$" contains=robotsUrl,robotsMail,robotsString

" Star * (means all spiders)
syn match  robotsStar		"\*"

" :
syn match  robotsDelimiter	":"


" The keywords
" User-agent
syn match  robotsAgent		"^[Uu][Ss][Ee][Rr]\-[Aa][Gg][Ee][Nn][Tt]"
" Disallow
syn match  robotsDisallow	"^[Dd][Ii][Ss][Aa][Ll][Ll][Oo][Ww]"

" Disallow: or User-Agent: and the rest of the line before an eventual comment
synt match robotsLine		"\(^[Uu][Ss][Ee][Rr]\-[Aa][Gg][Ee][Nn][Tt]\|^[Dd][Ii][Ss][Aa][Ll][Ll][Oo][Ww]\):[^#]*"	contains=robotsAgent,robotsDisallow,robotsStar,robotsDelimiter

" Some frequent things in comments
syn match  robotsUrl		"http[s]\=://\S*"
syn match  robotsMail		"\S*@\S*"
syn region robotsString		start=+L\="+ skip=+\\\\\|\\"+ end=+"+

if !exists("did_robots_syntax_inits")
	let did_robots_syntax_inits = 1
	" The default methods for highlighting.  Can be overridden later
	hi link robotsComment	Comment
	hi link robotsAgent	Type
	hi link robotsDisallow	Statement
	hi link robotsLine	Special
	hi link robotsStar	Operator
	hi link robotsDelimiter	Delimiter
	hi link robotsUrl	String
	hi link robotsMail	String
	hi link robotsString	String
endif

let b:current_syntax = "robots"

" vim:ts=8
