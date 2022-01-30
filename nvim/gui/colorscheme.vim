syntax on

set termguicolors

set background=dark
hi clear
syntax reset

" Status
set laststatus=2
set noshowmode
set statusline=%{%StatusLineContent()%}
hi StatusLine                guifg=none     guibg=none     gui=none
hi StatusLineNC              guifg=none     guibg=none     gui=none

hi StatusLineCurrent         guifg=#354256  guibg=#E6EAF1
hi StatusLineNotCurrent      guifg=#C0C8D8  guibg=#354256

hi StatusLineModeInsert      guifg=#13A852  guibg=#B8FFD6  gui=none
hi StatusLineModeCommand     guifg=#CF431B  guibg=#FFEEE9  gui=none
hi StatusLineModeVisual      guifg=#A61987  guibg=#FFD2F5  gui=none

func! StatusLineContent()
  let fmt=''

  if win_getid() == g:actual_curwin
    let fmt .= '%#StatusLineCurrent#'
  else
    let fmt .= '%#StatusLineNotCurrent#'
  endif

  if getbufinfo(bufnr())[0].changed
    let fmt .= ' •'
  endif

  let fmt .= ' %f %#Normal#'

  if mode() == 'i'
    let fmt .= ' %#StatusLineModeInsert# INSERT %#Normal#'
  elseif tolower(mode()) == 'v'
    let fmt .= ' %#StatusLineModeVisual# VISUAL %#Normal#'
  elseif mode() == 'c'
  elseif mode() != 'n'
    let fmt .= ' %#StatusLineNotCurrent# ' . mode() . ' %#Normal#'
  endif

  return fmt
endfunc

" Gutter
set number
set signcolumn=number
set numberwidth=5
set foldmethod=syntax
set foldlevelstart=8
hi LineNr                    guifg=#354256
hi Folded                    guifg=#354256  guibg=none
hi FoldColumn                guifg=#354256  guibg=none

" Menus
hi CursorColumn                             guibg=none
hi CursorLine                               guibg=#354256
hi Pmenu                                    guibg=#354256
hi PmenuSel                                 guibg=#77849E
hi PmenuSbar                                guibg=#C0C8D8
hi PmenuThumb                               guibg=#E6EAF1

" Syntax
hi Keyword                   guifg=#4B8FD6                 gui=bold
hi Conditional               guifg=#4B8FD6                 gui=bold
hi Repeat                    guifg=#4B8FD6                 gui=bold
hi Type                      guifg=#E05E6F                 gui=none
hi Function                  guifg=#9EC6EF                 gui=italic
hi Identifier                guifg=#E6EAF1
hi Operator                  guifg=#77849E
hi String                    guifg=#6AEAA0
hi Include                   guifg=#FAC5B6
hi Constant                  guifg=#F8EB9E
hi Macro                     guifg=#FF92E7
hi PreProc                   guifg=#FF92E7
hi Comment                   guifg=#E6EAF1  guibg=#354256  gui=italic

" Custom
hi xPunctuation              guifg=#77849E

" TypeScript
hi link typescriptExport               Keyword
hi link typescriptModule               Keyword
hi link typescriptClassKeyword         Keyword
hi link typescriptVariable             Keyword
hi link typescriptStatementKeyword     Keyword
hi link typescriptOperator             Keyword
hi link typescriptImport               Keyword

hi link typescriptBraces               xPunctuation
hi link typescriptParens               xPunctuation
hi link typescriptTypeAnnotation       xPunctuation
hi link typescriptTemplateSB           xPunctuation
hi link typescriptEndColons            xPunctuation

hi link typescriptTypeReference        Type

hi link typescriptCall                 Identifier
hi link typescriptDestructureVariable  Identifier

hi link typescriptAssign               Operator
hi link typescriptBinaryOp             Operator
hi link typescriptBinaryOp             Operator

hi link typescriptProp                 Function
hi link typescriptObjectLabel          Function

" Rust
hi link rustFoldBraces                 xPunctuation

hi SpecialKey                guifg=#3AE7EC
hi TermCursor                                              gui=none
hi NonText                   guifg=#19232F
hi Directory                 guifg=#3AE7EC
hi ErrorMsg                  guifg=#E6EAF1  guibg=#E05E6F
hi IncSearch                                               gui=none
hi Search                    guifg=#000000  guibg=#F6E36F
hi MoreMsg                   guifg=#1FBC61                 gui=bold
hi ModeMsg                                                 gui=bold
hi CursorLineNr              guifg=#F6E36F                 gui=bold
hi Question                  guifg=#2EDF79                 gui=bold
hi VertSplit                 guifg=#354256                 gui=none
hi Title                                                   gui=none
hi Visual                                   guibg=#354256
hi WarningMsg                guifg=#E05E6F
hi WildMenu                  guifg=#000000  guibg=#F6E36F
hi DiffAdd                                  guibg=#2872BE
hi DiffChange                               guibg=#A61987
hi DiffDelete                guifg=#7AADE2  guibg=#19ABAF  gui=bold
hi DiffText                                 guibg=#E05E6F  gui=bold
hi SignColumn                               guibg=none     gui=none
hi Conceal                   guifg=#C0C8D8  guibg=#354256
hi SpellBad                                                gui=undercurl guisp=#E05E6F
hi SpellCap                                                gui=undercurl guisp=#7AADE2
hi SpellRare                                               gui=undercurl guisp=#F250CE
hi SpellLocal                                              gui=undercurl guisp=#3AE7EC


hi TabLine                                  guibg=#354256  gui=underline
hi TabLineSel                                              gui=bold
hi TabLineFill                                             gui=none
hi ColorColumn                              guibg=#D7263D
hi RedrawDebugNormal                                       gui=none
hi RedrawDebugClear                         guibg=#F6E36F
hi RedrawDebugComposed                      guibg=#2EDF79
hi RedrawDebugRecompose                     guibg=#E05E6F
hi Cursor                    guifg=bg       guibg=fg
hi lCursor                   guifg=bg       guibg=fg
hi Normal                    guifg=#E6EAF1  guibg=none     gui=none
hi FloatShadow                              guibg=#000000
hi FloatShadowThrough                       guibg=#000000
hi Error                     guifg=#E6EAF1  guibg=#E05E6F
hi Todo                      guifg=#7AADE2  guibg=#F6E36F
hi Statement                 guifg=#F6E36F                 gui=none
hi Special                   guifg=#4B8FD6
hi DiagnosticError           guifg=#E05E6F
hi DiagnosticWarn            guifg=#F6E36F
hi DiagnosticInfo            guifg=#BBDAFB
hi DiagnosticHint            guifg=#C0C8D8
hi DiagnosticUnderlineError                                gui=undercurl guisp=#E05E6F
hi DiagnosticUnderlineWarn                                 gui=undercurl guisp=#F46036
hi DiagnosticUnderlineInfo                                 gui=undercurl guisp=#BBDAFB
hi DiagnosticUnderlineHint                                 gui=undercurl guisp=#C0C8D8
hi MatchParen                               guibg=#354256
hi Underlined                guifg=#F250CE                 gui=underline
hi Ignore                    guifg=bg
hi NvimInternalError         guifg=#E05E6F  guibg=#E05E6F
