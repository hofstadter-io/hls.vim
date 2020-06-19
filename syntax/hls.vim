""" HLS syntax file

" Phase strings
syn match Phase3 "^%%%\ .*"
hi link Phase3 Function
syn match Phase2 "^%%\ .*"
hi link Phase2 Function
syn match Phase1 "^%\ .*"
hi link Phase1 Function

syntax match Number "\<\d*\([Ee][+-]\?\d\+\)\?\>"
syntax match Number "\<\d\+[.]\d*\([Ee][+-]\?\d\+\)\?\>"
syntax match Number "\<[.]\d\+\([Ee][+-]\?\d\+\)\?\>"

"syntax keyword Constant true false
"syntax keyword Underlined error
"syntax keyword Type exec http

syn region LineComment start="#" end="$"
syn match LineComment "#.*$"
hi link LineComment Comment

syn region InlineExec start=/`/ end=/`/
hi link InlineExec Type

syn region LineString start=/'/ end=/'/
syn region LineString start=/"/ end=/"/
hi link LineString String

syn region MLineString start=/"""/rs=s,hs=s end=/"""/re=e,he=e
syn region MLineString start=/```/rs=s,hs=s end=/```/re=e,he=e
hi link MLineString String

syn region FileContent start=/\n===*[[:space:]]*.*[[:space:]]*===*\n/rs=s,hs=s end=/\n===*[[:space:]]*end[[:space:]]*===*/re=e,he=e
syn region FileContent start=/\n---*[[:space:]]*.*[[:space:]]*---*\n/rs=s,hs=s end=/\n---*[[:space:]]*end[[:space:]]*---*/re=e,he=e
hi link FileContent Ignore

"""""""" Key

" Same colors
"
" Grey: Ignore
" Pink: Special, Keyword, Include, Statement
" Blue: Type
" Green: Function
" Yellow: String
" DPurple: Comment
" LPurple: Number
