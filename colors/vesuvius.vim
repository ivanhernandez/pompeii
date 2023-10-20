" Name:       vesuvius.vim
" Version:    0.5
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

let g:colors_name='vesuvius'

let s:bright_black    = { "gui": "#000000", "cterm": "0"   }
let s:black           = { "gui": "#242424", "cterm": "0"   }
let s:dark_gray       = { "gui": "#666666", "cterm": "243" }
let s:medium_gray     = { "gui": "#888888", "cterm": "243" }
let s:light_gray      = { "gui": "#CCCCCC", "cterm": "249" }
let s:white           = { "gui": "#DFE0DD", "cterm": "15"  }
let s:bright_white    = { "gui": "#EFF0EE", "cterm": "15"  }
let s:orange          = { "gui": "#887770", "cterm": "208" }
let s:dark_red        = { "gui": "#BB4433", "cterm": "1"   }
let s:light_red       = { "gui": "#FF8880", "cterm": "1"   }
let s:dark_bluegray   = { "gui": "#323848", "cterm": "4"   }
let s:dark_blue       = { "gui": "#323878", "cterm": "4"   }
let s:light_blue      = { "gui": "#A8B4C0", "cterm": "153" }
let s:dark_cyan       = { "gui": "#557788", "cterm": "6"   }
let s:light_cyan      = { "gui": "#88AABB", "cterm": "14"  }
let s:dark_green      = { "gui": "#55CCAA", "cterm": "2"   }
let s:light_green     = { "gui": "#22FFCC", "cterm": "10"  }
let s:dark_purple     = { "gui": "#805577", "cterm": "5"   }
let s:light_purple    = { "gui": "#CC7788", "cterm": "13"  }
let s:dark_yellow     = { "gui": "#DDCC99", "cterm": "3"   }
let s:light_yellow    = { "gui": "#EEDDAA", "cterm": "11"  }

if &background == "dark"
  let s:bg               = s:black
  let s:bg_nc            = s:black
  let s:bg_subtle        = s:black
  let s:norm             = s:light_gray
  let s:norm_subtle      = s:medium_gray
  let s:visual           = s:dark_bluegray
  let s:cursor_line      = s:bright_black
  let s:constant         = s:light_blue
  let s:comment          = s:medium_gray
  let s:comment_em       = s:light_gray
  let s:on_screen        = s:medium_gray
  let s:on_screen_nc     = s:light_gray
  let s:selection        = s:light_yellow
  let s:selection_fg     = s:black
  let s:special          = s:orange
  let s:ok               = s:light_green
  let s:warning          = s:light_yellow
  let s:error            = s:light_red
  let s:change           = s:light_yellow
  let s:diff_add         = { "gui": "#344A38", "cterm": "2" }
  let s:diff_delete      = { "gui": "#4A3438", "cterm": "1" }
  let s:diff_change      = { "gui": "#384058", "cterm": "5" }
  let s:diff_text        = { "gui": "#503858", "cterm": "1" }
else
  let s:bg               = s:white
  let s:bg_nc            = s:white
  let s:bg_subtle        = s:white
  let s:norm             = s:black
  let s:norm_subtle      = s:black
  let s:visual           = s:light_blue
  let s:cursor_line      = s:bright_white
  let s:constant         = s:dark_blue
  let s:comment          = s:medium_gray
  let s:comment_em       = s:dark_gray
  let s:on_screen        = s:medium_gray
  let s:on_screen_nc     = s:dark_blue
  let s:selection        = s:dark_yellow
  let s:selection_fg     = s:dark_gray
  let s:special          = s:orange
  let s:ok               = s:dark_green
  let s:warning          = s:orange
  let s:error            = s:dark_red
  let s:change           = s:dark_yellow
  let s:diff_add         = { "gui": "#C0DAC8", "cterm": "2" }
  let s:diff_delete      = { "gui": "#DAC0C8", "cterm": "1" }
  let s:diff_change      = { "gui": "#C0C8DA", "cterm": "5" }
  let s:diff_text        = { "gui": "#CAC0E0", "cterm": "1" }
endif

" Neovim Terminal Mode
if &background == "dark"
"let g:terminal_color_0 = s:black["gui"]
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
" let g:terminal_color_15 = s:white
else
" let g:terminal_color_0 = s:black["gui"]
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
let g:terminal_color_15 = s:bright_black["gui"]
endif




unlet s:bright_black
unlet s:black
unlet s:medium_gray
unlet s:light_gray
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
unlet s:dark_yellow
unlet s:light_yellow

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

" __Normal Text__
call s:h("Cursor",        {"fg": s:bg, "bg": s:norm}) 
call s:h("Normal",        {"fg": s:norm, "bg": s:bg})
call s:h("NormalNC",      {"fg": s:norm, "bg": s:bg_nc})
call s:h("None",          {"fg": s:norm, "gui": "NONE"})
" __Root Syntax Highlights__
call s:h("Comment",       {"fg": s:comment, "gui": "italic"})
call s:h("SpecialComment",{"fg": s:comment, "gui": "italic"})
call s:h("Constant",      {"fg": s:constant})
call s:h("Operator",      {"fg": s:norm_subtle, "gui": "NONE"})
call s:h("TitleRef",      {"fg": s:constant, "gui": "underline"})
call s:h("Special",       {"fg": s:special, "gui": "bold"})
call s:h("Statement",     {"fg": s:norm, "gui": "bold"})
call s:h("Title",         {"fg": s:constant, "gui": "bold"})
call s:h("Todo",          {"fg": s:comment_em, "gui": "italic,bold,underline"})
call s:h("Type",          {"fg": s:norm, "gui": "bold,italic"})
call s:h("Underlined",    {"fg": s:norm, "gui": "underline"})
" __Derived Syntax Highlights__
hi! link Boolean          Constant
hi! link Character        Constant
hi! link Conditonal       Statement
hi! link Debug            Special
hi! link Define           PreProc
hi! link Delimiter        Special
hi! link Directory        Constant
hi! link Exception        Statement
hi! link Float            Constant
hi! link Function         None
hi! link Identifier       None
hi! link Include          Statement
hi! link Keyword          Statement
hi! link Label            Statement
hi! link Macro            PreProc
hi! link Noise            Operator         
hi! link Number           Constant
hi! link PreCondit        Comment 
hi! link PreProc          None
hi! link Repeat           Statement
hi! link SpecialChar      Special
hi! link SpecialComment   SpecialComment
hi! link SpecialKey       Special
hi! link StorageClass     Type
hi! link String           Constant
hi! link Structure        Type
hi! link Tag              Special
hi! link Typedef          Type


call s:h("LineNr",         {"fg": s:on_screen, "gui": "NONE"})
hi! link CursorLineNr     LineNr
hi! link FoldColumn       LineNr
hi! link SignColumn       LineNr

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
call s:h("VisualNOS",     {"bg": s:bg_subtle})
call s:h("Ignore",        {"fg": s:bg_subtle})


" __StatusLine__
call s:h("StatusLine",        {"gui": "underline", "bg": s:bg, "fg": s:on_screen})
call s:h("StatusLineNC",      {"gui": "underline", "bg": s:bg_nc, "fg": s:on_screen_nc})
call s:h("StatusLineOk",      {"gui": "underline", "bg": s:bg, "fg": s:ok})
call s:h("StatusLineError",   {"gui": "underline", "bg": s:bg, "fg": s:error})
call s:h("StatusLineWarning", {"gui": "underline", "bg": s:bg, "fg": s:warning})
call s:h("VertSplit",         {"fg": s:on_screen_nc, "bg": s:bg_nc, "gui": "NONE"})
call s:h("WildMenu",          {"gui": "underline,bold", "bg": s:bg, "fg": s:norm})

" __Popups__
call s:h("Pmenu",         {"fg": s:norm, "bg": s:cursor_line})
hi! link NormalFloat      PMenu
hi! link CompeDocumentation NormalFloat
hi! link PmenuSbar        Pmenu
hi! link PmenuThumb       Pmenu
call s:h("PmenuSel",      {"fg": s:norm, "bg": s:cursor_line, "gui": "bold"})

" __TabLine__
hi! link TabLine          Normal
hi! link TabLineSel       Keyword
hi! link TabLineFill      Normal

" __CursorLine__
call s:h("CursorLine",    {"bg": s:cursor_line})
call s:h("CursorLineNC",    {"bg": s:bg_nc})
call s:h("ColorColumn",   {"bg": s:cursor_line})
hi! link CursorColumn     ColorColumn

" __MatchParen__
call s:h("MatchParen",    {"bg": s:bg_subtle, "fg": s:norm})


" Diffs
call s:h("DiffAdd",       {"bg": s:diff_add})
call s:h("DiffDelete",    {"bg": s:diff_delete})
call s:h("DiffChange",    {"bg": s:diff_change})
call s:h("DiffText",      {"bg": s:diff_text})
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

" Spellings
if has("gui_running")
  call s:h("SpellBad",    {"gui": "underline", "sp": s:error})
  call s:h("SpellCap",    {"gui": "underline", "sp": s:ok})
  call s:h("SpellRare",   {"gui": "underline", "sp": s:warning})
  call s:h("SpellLocal",  {"gui": "underline", "sp": s:ok})
else
  call s:h("SpellBad",    {"cterm": "underline", "fg": s:error})
  call s:h("SpellCap",    {"cterm": "underline", "fg": s:ok})
  call s:h("SpellRare",   {"cterm": "underline", "fg": s:warning})
  call s:h("SpellLocal",  {"cterm": "underline", "fg": s:ok})
endif


" Help
hi! link helpHyperTextEntry Title
hi! link helpHyperTextJump  TitleRef



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

" Go Highlighting
hi link goBuiltins Statement
hi link goFunctionCall None
hi link goVarDefs Special
hi link goVarAssign None
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
hi! link htmlH1 None
hi! link htmlH2 None
hi! link htmlH3 None
hi! link htmlH4 None
hi! link htmlH5 None
hi! link htmlH6 None
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
hi link jsGlobalObjects None
hi link jsGlobalNodeObjects None

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

" Rust Highlighting
hi link rustModPath None
hi link rustIdentifier Type

" VimScript Highlighting
hi link vimParenSep Statement
hi link vimSep Statement

" XML Highlighting
hi link xmlProcessing Special
hi link xmlTag Identifier
hi link xmlTagName Keyword
hi link xmlEndTag xmlTag
hi link xmlAttrib xmlTag
hi link xmlString Constant

" YAML Highlighting
hi link yamlBlockMappingKey Statement



