" Original author: Dylan Araps
" Author:          Matteo Guarda
" Webpage:         https://github.com/matgua/wal.vim
" License:         MIT
" Description:     A fork of the official wal.vim, which is modified based on my personal taste.
"
" Please note that this theme uses also color13 which I set with a script of
" mine.
" Basically it is a 150% lighter version of color0 when I'm using a dark theme
" and a 20% lighter version of color7 when I'm using a light theme.
" You can find the script at https://github.com/matgua/dotfiles/raw/master/dotfiles/bin/bin/extend_pywal
" To make it functional, follow the comments at the top of the script.

highlight clear
set background=dark
set notermguicolors

if exists('syntax_on')
  syntax reset
endif

" Colorscheme name.
let g:colors_name = 'wal'

" Highlight groups. {{{

highlight Normal                     ctermbg=none ctermfg=07
highlight NonText                    ctermbg=none ctermfg=08
highlight Constant                   ctermbg=none ctermfg=03
highlight Error                      ctermbg=none ctermfg=01
highlight Identifier                 ctermbg=none ctermfg=01 cterm=bold
highlight Ignore                     ctermbg=08   ctermfg=00
highlight PreProc                    ctermbg=none ctermfg=03
highlight Special                    ctermbg=none ctermfg=06
highlight Statement                  ctermbg=none ctermfg=01
highlight String                     ctermbg=none ctermfg=02
highlight Number                     ctermbg=none ctermfg=03
highlight Todo                       ctermbg=02   ctermfg=00
highlight Type                       ctermbg=none ctermfg=03
highlight Underlined                 ctermbg=none ctermfg=01 cterm=underline
highlight TermCursorNC               ctermbg=03   ctermfg=00
highlight Title                      ctermbg=none ctermfg=04
highlight helpLeadBlank              ctermbg=none ctermfg=07
highlight helpNormal                 ctermbg=none ctermfg=07
highlight VisualNOS                  ctermbg=none ctermfg=01
highlight FoldColumn                 ctermbg=none ctermfg=07
highlight SpecialKey                 ctermbg=none ctermfg=08
highlight DiffAdd                    ctermbg=none ctermfg=02
highlight DiffChange                 ctermbg=none ctermfg=08
highlight DiffDelete                 ctermbg=none ctermfg=01
highlight DiffText                   ctermbg=none ctermfg=04
highlight Directory                  ctermbg=none ctermfg=04
highlight ColorColumn                ctermbg=13   ctermfg=none
highlight signColumn                 ctermbg=none ctermfg=04
highlight ErrorMsg                   ctermbg=none ctermfg=08
highlight ModeMsg                    ctermbg=none ctermfg=02
highlight MoreMsg                    ctermbg=none ctermfg=02
highlight Question                   ctermbg=none ctermfg=04
highlight WarningMsg                 ctermbg=01   ctermfg=00
highlight Cursor                     ctermbg=none ctermfg=08
highlight Structure                  ctermbg=none ctermfg=05
highlight CursorColumn               ctermbg=08   ctermfg=07
highlight ModeMsg                    ctermbg=none ctermfg=07
highlight SpellBad                   ctermbg=none ctermfg=01 cterm=underline
highlight SpellCap                   ctermbg=none ctermfg=04 cterm=underline
highlight SpellLocal                 ctermbg=none ctermfg=05 cterm=underline
highlight SpellRare                  ctermbg=none ctermfg=06 cterm=underline
highlight Boolean                    ctermbg=none ctermfg=05
highlight Character                  ctermbg=none ctermfg=01
highlight Conditional                ctermbg=none ctermfg=05
highlight Define                     ctermbg=none ctermfg=05
highlight Delimiter                  ctermbg=none ctermfg=05
highlight Float                      ctermbg=none ctermfg=05
highlight Include                    ctermbg=none ctermfg=04
highlight Keyword                    ctermbg=none ctermfg=05
highlight Label                      ctermbg=none ctermfg=03
highlight Operator                   ctermbg=none ctermfg=07
highlight Repeat                     ctermbg=none ctermfg=03
highlight SpecialChar                ctermbg=none ctermfg=05
highlight Tag                        ctermbg=none ctermfg=03
highlight Typedef                    ctermbg=none ctermfg=03
highlight vimUserCommand             ctermbg=none ctermfg=01 cterm=bold
highlight vimNotation                ctermbg=none ctermfg=04
highlight vimMapModKey               ctermbg=none ctermfg=04
highlight vimBracket                 ctermbg=none ctermfg=07
highlight vimCommentString           ctermbg=none ctermfg=08
highlight htmlLink                   ctermbg=none ctermfg=01 cterm=underline
highlight htmlBold                   ctermbg=none ctermfg=03 cterm=bold
highlight htmlItalic                 ctermbg=none ctermfg=05
highlight htmlEndTag                 ctermbg=none ctermfg=07
highlight htmlTag                    ctermbg=none ctermfg=07
highlight htmlTagName                ctermbg=none ctermfg=01 cterm=bold
highlight htmlH1                     ctermbg=none ctermfg=07
highlight cssMultiColumnAttr         ctermbg=none ctermfg=02
highlight cssBraces                  ctermbg=none ctermfg=07
highlight cssValueLength             ctermbg=none ctermfg=07
highlight cssUnitDecorators          ctermbg=none ctermfg=07
highlight cssValueNumber             ctermbg=none ctermfg=07
highlight cssNoise                   ctermbg=none ctermfg=08
highlight cssTagName                 ctermbg=none ctermfg=01
highlight cssFunctionName            ctermbg=none ctermfg=04
highlight scssSelectorChar           ctermbg=none ctermfg=07
highlight scssAttribute              ctermbg=none ctermfg=07
highlight sassidChar                 ctermbg=none ctermfg=01
highlight sassClassChar              ctermbg=none ctermfg=05
highlight sassInclude                ctermbg=none ctermfg=05
highlight sassMixing                 ctermbg=none ctermfg=05
highlight sassMixinName              ctermbg=none ctermfg=04
highlight javaScript                 ctermbg=none ctermfg=07
highlight javaScriptBraces           ctermbg=none ctermfg=07
highlight javaScriptNumber           ctermbg=none ctermfg=05
highlight markdownH1                 ctermbg=none ctermfg=07
highlight markdownAutomaticLink      ctermbg=none ctermfg=02 cterm=underline
highlight markdownError              ctermbg=none ctermfg=07
highlight markdownCode               ctermbg=none ctermfg=03
highlight markdownCodeBlock          ctermbg=none ctermfg=03
highlight markdownCodeDelimiter      ctermbg=none ctermfg=05
highlight markdownItalic             cterm=italic
highlight markdownBold               cterm=bold
highlight xdefaultsValue             ctermbg=none ctermfg=07
highlight rubyInclude                ctermbg=none ctermfg=04
highlight rubyDefine                 ctermbg=none ctermfg=05
highlight rubyFunction               ctermbg=none ctermfg=04
highlight rubyStringDelimiter        ctermbg=none ctermfg=02
highlight rubyInteger                ctermbg=none ctermfg=03
highlight rubyAttribute              ctermbg=none ctermfg=04
highlight rubyConstant               ctermbg=none ctermfg=03
highlight rubyInterpolation          ctermbg=none ctermfg=02
highlight rubyInterpolationDelimiter ctermbg=none ctermfg=03
highlight rubyRegexp                 ctermbg=none ctermfg=06
highlight rubySymbol                 ctermbg=none ctermfg=02
highlight rubyTodo                   ctermbg=none ctermfg=08
highlight rubyRegexpAnchor           ctermbg=none ctermfg=07
highlight pythonOperator             ctermbg=none ctermfg=05
highlight pythonFunction             ctermbg=none ctermfg=04
highlight pythonRepeat               ctermbg=none ctermfg=05
highlight pythonStatement            ctermbg=none ctermfg=01 cterm=bold
highlight pythonBuiltIn              ctermbg=none ctermfg=04
highlight phpMemberSelector          ctermbg=none ctermfg=07
highlight phpComparison              ctermbg=none ctermfg=07
highlight phpParent                  ctermbg=none ctermfg=07
highlight cOperator                  ctermbg=none ctermfg=06
highlight cPreCondit                 ctermbg=none ctermfg=05
highlight SignifySignAdd             ctermbg=none ctermfg=02
highlight SignifySignChange          ctermbg=none ctermfg=04
highlight SignifySignDelete          ctermbg=none ctermfg=01

" Changed / added with this fork.
highlight EndOfBuffer           ctermbg=none ctermfg=00
highlight HighlightedyankRegion ctermbg=13   ctermfg=none
highlight BarraVuota            ctermbg=none
highlight GitGutterAdd          ctermbg=none ctermfg=08
highlight GitGutterChange       ctermbg=none ctermfg=08
highlight GitGutterDelete       ctermbg=none ctermfg=08
highlight GitGutterChangeDelete ctermbg=none ctermfg=08
highlight GitGutterDeleteLine   ctermbg=none ctermfg=08
highlight StatusLine            ctermbg=none ctermfg=13   cterm=none
highlight StatusLineNC          ctermbg=none ctermfg=13   cterm=none
highlight Comment               ctermbg=none ctermfg=08   cterm=italic
highlight TabLine               ctermbg=none ctermfg=13   cterm=none
highlight TabLineFill           ctermbg=none cterm=none
highlight TabLineSel            ctermbg=none ctermfg=01   cterm=bold
highlight VertSplit             ctermbg=none ctermfg=00   cterm=none
highlight LineNr                ctermbg=none ctermfg=13
highlight CursorLine            ctermbg=none ctermfg=none cterm=none
highlight CursorLineNr          ctermbg=none ctermfg=07
highlight Visual                ctermbg=13   ctermfg=none
highlight Pmenu                 ctermbg=none ctermfg=13
highlight PmenuSbar             ctermbg=none
highlight PmenuSel              ctermbg=none ctermfg=01   cterm=bold
highlight PmenuThumb            ctermbg=none
highlight Folded                ctermbg=none ctermfg=08   cterm=bold
highlight IncSearch             ctermbg=none ctermfg=04
highlight Search                ctermbg=13   ctermfg=none
highlight MatchParen            ctermbg=13   ctermfg=none
highlight NERDTreeDirSlash      ctermbg=none ctermfg=04
highlight NERDTreeExecFile      ctermbg=none ctermfg=07
highlight ALEErrorSign          ctermbg=none ctermfg=01   cterm=bold
highlight ALEWarningSign        ctermbg=none ctermfg=01   cterm=bold
highlight ALEError              ctermbg=none ctermfg=01   cterm=bold
highlight ALEWarning            ctermbg=none ctermfg=01   cterm=bold
highlight WildMenu              ctermbg=none ctermfg=01   cterm=bold
highlight Whitespace            ctermbg=none ctermfg=08

" Links.
highlight link vimMap               vimUserCommand
highlight link vimLet               vimUserCommand
highlight link vimCommand           vimUserCommand
highlight link vimFTCmd             vimUserCommand
highlight link vimAutoCmd           vimUserCommand
highlight link vimNotFunc           vimUserCommand
highlight link htmlH2               htmlH1
highlight link htmlH3               htmlH1
highlight link htmlH4               htmlH1
highlight link htmlH5               htmlH1
highlight link htmlH6               htmlH1
highlight link cssFontAttr          cssMultiColumnAttr
highlight link cssFlexibleBoxAttr   cssMultiColumnAttr
highlight link cssAttrComma         cssBraces
highlight link cssValueLength       cssValueNumber
highlight link scssDefinition       cssNoise
highlight link markdownH2           markdownH1
highlight link markdownH3           markdownH1
highlight link markdownH4           markdownH1
highlight link markdownH5           markdownH1
highlight link markdownH6           markdownH1
highlight link markdownUrl          markdownAutomaticLink
highlight link rubyRegexpQuantifier rubyRegexpAnchor

" }}}

" Plugin options. {{{

let g:indentLine_color_term     = 13
let g:limelight_conceal_ctermfg = 13

" }}}
