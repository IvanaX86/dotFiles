scriptencoding utf-8

let g:airline#themes#iva_pink_airline#palette = {}

let s:N1 = ['#721d6e' , '#f913ee' , 124 , 200 ]
let s:N2 = ['#ffffff' , '#000000' , 015 , 000 ]
let s:N3 = ['#873f93' , '#d72ef4' , 089 , 165 ]

let g:airline#themes#iva_pink_airline#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let g:airline#themes#iva_pink_airline#palette.accents = {
    \ 'red': [ '#c9061c' , '' , 009 , '' ]
    \ }

let pal = g:airline#themes#iva_pink_airline#palette

for item in ['insert', 'replace', 'visual', 'inactive', 'ctrlp']
  exe "let pal.".item." = pal.normal"
  for suffix in ['_modified', '_paste']
    exe "let pal.".item.suffix." = pal.normal"
  endfor
endfor
