" Name:       pompeii.vim
" Version:    0.1
" Maintainer: github.com/ivanhernandez
" License:    The MIT License (MIT)
"
" Based on
"
"   https://github.com/sdothum/vim-colors-duochrome 
"
" which in turn based on
"
"   https://github.com/andreypopp/vim-colors-plain
"
" which in turn based on
"
"   https://github.com/pbrisbin/vim-colors-off (MIT License)
"
" which in turn based on
"
"   https://github.com/reedes/vim-colors-pencil (MIT License)
"
"""
hi clear

if exists('syntax on')
    syntax reset
endif

let g:colors_name='pompeii'

" OTHER COLORS:
" let s:bg=      "#f0ebea"  " alt:  #fff5f0
" let s:fg=      "#443333"  " alt:  #443333
" let s:fg2=     "#443333"  " alt:  #4f3223
" let s:fg3=     "#443333"  " alt:  #5f4436
" let s:bg2=     "#ddd8d7"  " alt:  #ddd8d7
" let s:bg3=     "#ffebe0"  " alt:  #cac5c5
" let s:keyword= "#443333"  " alt:  #4020bb
" let s:builtin= "#443333"  " alt:  #402010
" let s:const=   "#4499cc"  " alt:  #d05030
" let s:comment= "#cc8899"  " alt:  #b0a090
" let s:func=    "#443333"  " alt:  #10a090
" let s:str=     "#4499cc"  " alt:  #f0a050
" let s:type=    "#443333"  " alt:  #4020cc
" let s:var=     "#443333"  " alt:  #402010
" let s:warning= "#cc8899"  " alt:  #f03070
" let s:warning2="#cc8844"  " alt:  #20c0b0

let s:black           = { "gui": "#221111", "cterm": "0"   }  
let s:light_black     = { "gui": "#332222", "cterm": "8"   }  
let s:lighter_black   = { "gui": "#554444", "cterm": "240" }  
let s:medium_gray     = { "gui": "#CC8899", "cterm": "243" }  
let s:light_gray      = { "gui": "#95786A", "cterm": "249" }  
let s:lighter_gray    = { "gui": "#B0A090", "cterm": "251" }  
let s:white           = { "gui": "#F0EBEA", "cterm": "15"  }  
let s:bright_white    = { "gui": "#FFFCF9", "cterm": "15"  }  
let s:orange          = { "gui": "#CC8844", "cterm": "208" }  
let s:dark_red        = { "gui": "#BB4433", "cterm": "1"   }  
let s:light_red       = { "gui": "#FF8880", "cterm": "1"   }  
let s:dark_blue       = { "gui": "#4477AA", "cterm": "4"   }  
let s:light_blue      = { "gui": "#99BBDD", "cterm": "153" }  
let s:dark_cyan       = { "gui": "#557788", "cterm": "6"   }  
let s:light_cyan      = { "gui": "#88AABB", "cterm": "14"  }  
let s:dark_green      = { "gui": "#55CCAA", "cterm": "2"   }
let s:light_green     = { "gui": "#22FFCC", "cterm": "10"  }
let s:dark_purple     = { "gui": "#CC88AA", "cterm": "5"   }  
let s:light_purple    = { "gui": "#DDBBDD", "cterm": "13"  }  
let s:light_yellow    = { "gui": "#FFEE99", "cterm": "11"  }  
let s:dark_yellow     = { "gui": "#EECC66", "cterm": "3"   }  

if &background == "dark"
  let s:bg               = s:black
  let s:bg_subtle        = s:light_black
  let s:bg_very_subtle   = s:lighter_black
  let s:norm             = s:lighter_gray
  let s:norm_subtle      = s:light_gray
  let s:norm_very_subtle = s:medium_gray
  let s:purple           = s:light_purple
  let s:cyan             = s:light_cyan
  let s:green            = s:light_green
  let s:red              = s:light_red
  let s:yellow           = s:light_yellow
  let s:visual           = s:light_blue
  let s:cursor_line      = s:lighter_black
  let s:constant         = s:light_blue
  let s:comment          = s:light_gray
  let s:selection        = s:dark_yellow
  let s:selection_fg     = s:black
  let s:ok               = s:light_green
  let s:warning          = s:yellow
  let s:error            = s:light_red
else
  let s:bg               = s:white
  let s:bg_subtle        = s:lighter_gray
  let s:bg_very_subtle   = s:light_gray
  let s:norm             = s:light_black
  let s:norm_subtle      = s:lighter_black
  let s:norm_very_subtle = s:medium_gray
  let s:purple           = s:dark_purple
  let s:cyan             = s:dark_cyan
  let s:green            = s:dark_green
  let s:red              = s:dark_red
  let s:yellow           = s:dark_yellow
  let s:visual           = s:light_blue
  let s:cursor_line      = s:bright_white  
  let s:constant         = s:dark_blue
  let s:comment          = s:medium_gray
  let s:selection        = s:light_yellow
  let s:selection_fg     = s:lighter_black
  let s:ok               = s:light_green
  let s:warning          = s:yellow
  let s:error            = s:dark_red
endif

" unlet s:black
unlet s:light_black
unlet s:lighter_black
unlet s:medium_gray
unlet s:light_gray
unlet s:lighter_gray
unlet s:white
unlet s:bright_white
unlet s:orange
unlet s:dark_red
unlet s:light_red
unlet s:dark_blue
unlet s:light_blue
unlet s:dark_cyan
unlet s:light_cyan
unlet s:dark_green
unlet s:light_green
unlet s:dark_purple
unlet s:light_purple
unlet s:light_yellow
unlet s:dark_yellow

" https://github.com/noahfrederick/vim-hemisu/
function! s:h(group, style)
  execute "highlight" a:group
    \ "guifg="   (has_key(a:style, "fg")    ? a:style.fg.gui   : "NONE")
    \ "guibg="   (has_key(a:style, "bg")    ? a:style.bg.gui   : "NONE")
    \ "guisp="   (has_key(a:style, "sp")    ? a:style.sp.gui   : "NONE")
    \ "gui="     (has_key(a:style, "gui")   ? a:style.gui      : "NONE")
    \ "ctermfg=" (has_key(a:style, "fg")    ? a:style.fg.cterm : "NONE")
    \ "ctermbg=" (has_key(a:style, "bg")    ? a:style.bg.cterm : "NONE")
    \ "cterm="   (has_key(a:style, "cterm") ? a:style.cterm    : "NONE")
endfunction

" __Normal__
if has("gui")
    call s:h("Normal",    {"fg": s:norm, "bg": s:bg})
    call s:h("Underlined",{"fg": s:norm, "bg": s:bg, "gui": "underline"})
    call s:h("Cursor",    {"fg": s:black, "bg": s:green}) 
else
    call s:h("Normal",    {"fg": s:norm, "bg": s:bg})
    " call s:h("Normal",    {"fg": s:norm})
    call s:h("Underlined",{"fg": s:norm, "gui": "underline"})
    call s:h("Cursor",    {"fg": s:black, "bg": s:green})  
    " hi! link Cursor       Identifier
endif
hi! link Identifier       Normal
hi! link Function         Identifier
call s:h("Type", {"fg": s:norm, "gui":"bold,italic"})
hi! link StorageClass     Type
hi! link Structure        Type
hi! link Typedef          Type
hi! link Special          Normal
hi! link SpecialChar      Special
hi! link SpecialKey       Special
hi! link Tag              Special
hi! link Delimiter        Special
hi! link SpecialComment   Special
hi! link Debug            Special
hi! link VertSplit        Special
hi! link PreProc          Normal
hi! link Define           PreProc
hi! link Macro            PreProc
hi! link PreCondit        Comment  " highlight code sections

" __Operator__
call s:h("Noise",         {"fg": s:norm_subtle, "gui": "NONE"})
hi! link Operator         Noise
call s:h("LineNr",         {"fg": s:norm_very_subtle, "gui": "NONE"})
hi! link CursorLineNr     LineNr
hi! link FoldColumn       LineNr
hi! link SignColumn       LineNr

" __Comment__
call s:h("Comment",       {"fg": s:comment, "gui": "italic"})
call s:h("Todo",          {"fg": s:comment, "bg" : s:bg_subtle, "gui": "italic,bold"})

" __Constant__
call s:h("Constant",      {"fg": s:constant})
hi! link Character        Constant
hi! link Number           Constant
hi! link Boolean          Constant
hi! link Float            Constant
hi! link String           Constant
hi! link Directory        Constant
hi! link Title            Constant

" __Statement__
call s:h("Statement",     {"fg": s:black, "gui": "bold"})
hi! link Include          Statement
hi! link Conditonal       Statement
hi! link Repeat           Statement
hi! link Label            Statement
hi! link Keyword          Statement
hi! link Exception        Statement

" __ErrorMsg__
call s:h("ErrorMsg",      {"fg": s:error})
hi! link Error            ErrorMsg
hi! link Question         ErrorMsg
" __WarningMsg__
call s:h("WarningMsg",    {"fg": s:warning})
" __MoreMsg__
call s:h("MoreMsg",       {"fg": s:norm_subtle, "cterm": "bold", "gui": "bold"})
hi! link ModeMsg          MoreMsg

" __NonText__
hi! link NonText          Comment
hi! link Folded           NonText
hi! link qfLineNr         NonText

" __Search__
call s:h("Search",        {"bg": s:selection, "fg": s:selection_fg})
call s:h("IncSearch",     {"bg": s:selection, "fg": s:selection_fg, "gui": "bold"})

" __Visual__
call s:h("Visual",        {"bg": s:visual})
" __VisualNOS__
call s:h("VisualNOS",     {"bg": s:bg_subtle})

call s:h("Ignore",        {"fg": s:bg})

" __DiffAdd__
call s:h("DiffAdd",       {"fg": s:green})
" __DiffDelete__
call s:h("DiffDelete",    {"fg": s:red})
" __DiffChange__
call s:h("DiffChange",    {"fg": s:yellow})
" __DiffText__
call s:h("DiffText",      {"fg": s:constant})

if has("gui_running")
  call s:h("SpellBad",    {"gui": "underline", "sp": s:red})
  call s:h("SpellCap",    {"gui": "underline", "sp": s:ok})
  call s:h("SpellRare",   {"gui": "underline", "sp": s:error})
  call s:h("SpellLocal",  {"gui": "underline", "sp": s:ok})
else
  call s:h("SpellBad",    {"cterm": "underline", "fg": s:red})
  call s:h("SpellCap",    {"cterm": "underline", "fg": s:ok})
  call s:h("SpellRare",   {"cterm": "underline", "fg": s:error})
  call s:h("SpellLocal",  {"cterm": "underline", "fg": s:ok})
endif

hi! link helpHyperTextEntry Title
hi! link helpHyperTextJump  String

" __StatusLine__
call s:h("StatusLine",        {"gui": "underline", "bg": s:bg, "fg": s:norm_very_subtle})
" __StatusLineNC__
call s:h("StatusLineNC",      {"gui": "underline", "bg": s:bg, "fg": s:bg_subtle})
" __WildMenu__
call s:h("WildMenu",          {"gui": "underline,bold", "bg": s:bg, "fg": s:norm})

call s:h("StatusLineOk",      {"gui": "underline", "bg": s:bg, "fg": s:ok})
call s:h("StatusLineError",   {"gui": "underline", "bg": s:bg, "fg": s:error})
call s:h("StatusLineWarning", {"gui": "underline", "bg": s:bg, "fg": s:warning})

" __Pmenu__
call s:h("Pmenu",         {"fg": s:norm, "bg": s:cursor_line})
hi! link PmenuSbar        Pmenu
hi! link PmenuThumb       Pmenu
" __PmenuSel__
call s:h("PmenuSel",      {"fg": s:norm, "bg": s:cursor_line, "gui": "bold"})

hi! link TabLine          Normal
hi! link TabLineSel       Keyword
hi! link TabLineFill      Normal

" __CursorLine__
call s:h("CursorLine",    {"bg": s:cursor_line})
" __CursorColumn__
call s:h("ColorColumn",   {"bg": s:cursor_line})
hi! link CursorColumn     ColorColumn

" __MatchParen__
call s:h("MatchParen",    {"bg": s:bg_subtle, "fg": s:norm})


hi link diffRemoved       DiffDelete
hi link diffAdded         DiffAdd



" Signify, git-gutter
hi link SignifySignAdd              DiffAdd
hi link SignifySignDelete           DiffDelete
hi link SignifySignChange           DiffChange
hi link GitGutterAdd                DiffAdd
hi link GitGutterDelete             DiffDelete
hi link GitGutterChange             DiffChange
hi link GitGutterChangeDelete       DiffText



" Neovim Terminal Mode
" let g:terminal_color_0 = s:bg
" let g:terminal_color_1 = s:warning
" let g:terminal_color_2 = s:keyword
" let g:terminal_color_3 = s:bg4
" let g:terminal_color_4 = s:func
" let g:terminal_color_5 = s:builtin
" let g:terminal_color_6 = s:fg3
" let g:terminal_color_7 = s:str
" let g:terminal_color_8 = s:bg2
" let g:terminal_color_9 = s:warning2
" let g:terminal_color_10 = s:fg2
" let g:terminal_color_11 = s:var
" let g:terminal_color_12 = s:type
" let g:terminal_color_13 = s:const
" let g:terminal_color_14 = s:fg4
" let g:terminal_color_15 = s:comment


" C# Highlighting
hi link csBraces Statement
hi link csClass Statement
hi link csComment Comment
hi link csModifier Statement
call s:h("csInterpolation", {"gui": "italic", "fg": s:norm_subtle})
call s:h("csInterpolationDelimiter", {"fg": s:constant, "gui": "bold"})
hi link csNew Statement
hi link csNewType Type
hi link csOpSymbols Operator
hi link csParens Statement
hi link csStorage Statement  
" hi link csType Type

" Go Highlighting
hi link goBuiltins Statement
let g:go_highlight_array_whitespace_error = 1
let g:go_highlight_build_constraints      = 1
let g:go_highlight_chan_whitespace_error  = 1
let g:go_highlight_extra_types            = 1
let g:go_highlight_fields                 = 1
let g:go_highlight_format_strings         = 1
let g:go_highlight_function_calls         = 1
let g:go_highlight_function_parameters    = 1
let g:go_highlight_functions              = 1
let g:go_highlight_generate_tags          = 1
let g:go_highlight_operators              = 1
let g:go_highlight_space_tab_error        = 1
let g:go_highlight_string_spellcheck      = 1
let g:go_highlight_types                  = 1
let g:go_highlight_variable_assignments   = 1
let g:go_highlight_variable_declarations  = 1

" HTML Highlighting
hi! link htmlH1 Normal
hi! link htmlH2 Normal
hi! link htmlH3 Normal
hi! link htmlH4 Normal
hi! link htmlH5 Normal
hi! link htmlH6 Normal
hi! link htmlLink Underlined
hi! link htmlStatement Statement
hi! link htmlSpecialTagName Constant

" Javascript Highlighting
hi link jsAssignmentExps Statement
hi link jsArrowFunction Noise
hi link jsBuiltins Statement
hi link jsFlowTypeKeyword Statement
hi link jsFlowImportType Statement
hi link jsFunction Statement
hi link jsGlobalObjects Normal
hi link jsGlobalNodeObjects Normal

" Markdown Highlighting
hi link markdownH1 Statement
hi link markdownH2 Statement
hi link markdownH3 Statement
hi link markdownH4 Statement
hi link markdownH5 Statement
hi link markdownH6 Statement
hi link markdownListMarker Constant
hi link mkdCode Constant
hi link markdownCode Constant
hi link markdownCodeBlock Constant
hi link markdownCodeDelimiter Constant
hi link markdownHeadingDelimiter Constant

" Python Highlighting
hi link pythonOperator Statement
hi link pythonBuiltinFunc Statement

" Ruby Highlighting
" exe 'hi rubyAttribute guifg='s:builtin
" exe 'hi rubyLocalVariableOrMethod guifg='s:var
" exe 'hi rubyGlobalVariable guifg='s:var' gui=italic'
" exe 'hi rubyInstanceVariable guifg='s:var
" exe 'hi rubyKeyword guifg='s:keyword
" exe 'hi rubyKeywordAsMethod guifg='s:keyword' gui=bold'
" exe 'hi rubyClassDeclaration guifg='s:keyword' gui=bold'
" exe 'hi rubyClass guifg='s:keyword' gui=bold'
" exe 'hi rubyNumber guifg='s:const

" VimScript Highlighting
hi link vimParenSep Statement
hi link vimSep Statement

" XML Highlighting
hi link xmlTag Constant
hi link xmlTagName xmlTag
hi link xmlEndTag xmlTag
hi link xmlAttrib xmlTag

" YAML Highlighting
hi link yamlBlockMappingKey Statement



