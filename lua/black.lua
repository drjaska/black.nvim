local black = {
    black    = '#000000';
    neardark = '#112630';
    gray1    = '#111111';
    gray2    = '#222222';
    gray3    = '#333333';
    gray4    = '#444444';
    gray     = '#637777';
    gray7    = '#777777';
    white    = '#aaaaaa';
    bright   = '#eeeeee';
    purple   = '#2d2c5d';
    purple2  = '#c792ea';
    blue     = '#82aaff';
    cyan     = '#d6deeb';
    cyan2    = '#5ca7e4';
    green    = '#c5e478';
    yellow   = '#ffcb8b';
    yellow2  = '#ffcb88';
    yellow3  = '#fbec9f';
    yellow4  = '#f4d554';
    red      = '#ff5874';
    red2     = '#f78c6c';
    hoki     = '#5f7e97';
    error_fg = '#EF5350';
    info_fg  = '#64B5F6';
    warn_fg  = '#FFCA28';
    hint_fg  = '#c51cfd';
    none     = 'NONE';
  }

  function black.terminal_color()
    vim.g.terminal_color_0  = black.black
    vim.g.terminal_color_1  = black.red
    vim.g.terminal_color_2  = black.green
    vim.g.terminal_color_3  = black.red2
    vim.g.terminal_color_4  = black.blue
    vim.g.terminal_color_5  = black.purple2
    vim.g.terminal_color_6  = black.yellow2
    vim.g.terminal_color_7  = black.white
    vim.g.terminal_color_8  = black.gray
    vim.g.terminal_color_9  = black.red
    vim.g.terminal_color_10 = black.green
    vim.g.terminal_color_11 = black.red2
    vim.g.terminal_color_12 = black.blue
    vim.g.terminal_color_13 = black.purple2
    vim.g.terminal_color_14 = black.yellow2
    vim.g.terminal_color_15 = black.bright
  end

  function black.highlight(group, color)
    local style = color.style and 'gui=' .. color.style or 'gui=NONE'
    local fg = color.fg and 'guifg=' .. color.fg or 'guifg=NONE'
    local bg = color.bg and 'guibg=' .. color.bg or 'guibg=NONE'
    local sp = color.sp and 'guisp=' .. color.sp or ''
    vim.api.nvim_command('highlight ' .. group .. ' ' .. style .. ' ' .. fg ..
    ' ' .. bg..' '..sp)
  end

  function black.load_syntax()
    local syntax = {
      Normal                               = {fg=black.yellow,bg=black.black};
      Terminal                             = {fg = black.yellow,bg=black.darkblue};
      LineNr                               = {fg=black.gray4,   bg=black.black};
      CursorLine                           = {bg=black.neardark};
      CursorLineNr                         = {fg=black.white,   bg=black.neardark};
      ColorColumn                          = {bg=black.gray2};
      Directory                            = {fg=black.blue};
      DiffAdd                              = {fg=black.black,  bg=black.green};
      DiffChange                           = {fg=black.black,  bg=black.yellow};
      DiffDelete                           = {fg=black.black,  bg=black.red };
      DiffText                             = {fg=black.black,  bg=black.green};
      diffAdded                            = {fg=black.green};
      diffRemoved                          = {fg=black.red};
      VertSplit                            = {fg=black.gray7};
      Folded                               = {fg=black.gray7,   bg=black.black};
      FoldColumn                           = {fg=black.gray3,   bg=black.black};
      SignColumn                           = {fg=black.none,    bg=black.black};
      IncSearch                            = {fg=black.bright,  bg=black.yellow};
      NonText                              = {fg=black.gray4};
      PMenu                                = {bg=black.purple};
      PMenuSel                             = {bg=black.purple2};
      Search                               = {fg=black.black,  bg=black.yellow};
      SpecialKey                           = {fg=black.yellow};
      StatusLine                           = {fg=black.bright,  bg=black.neardark};
      StatusLineNC                         = {fg=black.gray7,   bg=black.neardark};
      Title                                = {fg=black.blue};
      Visual                               = {fg=black.cyan,   bg=black.purple};
      EndOfBuffer                          = {fg=black.gray4,   bg=black.black };
      Comment                              = {fg=black.gray,    style='italic'};
      Constant                             = {fg=black.green};
      String                               = {fg=black.yellow};
      Identifier                           = {fg=black.yellow2};
      Statement                            = {fg=black.cyan};
      Operator                             = {fg=black.purple2};
      Exception                            = {fg=black.green};
      PreProc                              = {fg=black.purple2};
      Type                                 = {fg=black.red2};
      StorageClass                         = {fg=black.purple2};
      htmlTag                              = {fg=black.gray,    bg=black.none};
      htmlEndTag                           = {fg=black.gray,    bg=black.none};
      Todo                                 = {fg=black.gray7,   bg=black.yellow};
      jsStorageClass                       = {fg=black.blue};
      jsOperator                           = {fg=black.purple2};
      jsArrowFunction                      = {fg=black.purple2};
      jsString                             = {fg=black.yellow};
      jsComment                            = {fg=black.gray,    style='italic'};
      jsFuncCall                           = {fg=black.blue};
      jsNumber                             = {fg=black.red2};
      jsSpecial                            = {fg=black.red2};
      jsObjectProp                         = {fg=black.yellow2};
      jsOperatorKeyword                    = {fg=black.yellow2};
      jsBooleanFalse                       = {fg=black.red};
      jsBooleanTrue                        = {fg=black.red};
      jsRegexpString                       = {fg=black.cyan2};
      jsConditional                        = {fg=black.purple2};
      jsFunction                           = {fg=black.blue};
      jsReturn                             = {fg=black.purple2};
      jsFuncName                           = {fg=black.blue};
      jsParensError                        = {fg=black.blue};
      jsClassDefinition                    = {fg=black.yellow};
      jsImport                             = {fg=black.purple2,  style='italic'};
      jsFrom                               = {fg=black.purple2,  style='italic'};
      jsModuleAs                           = {fg=black.purple2,  style='italic'};
      jsExport                             = {fg=black.yellow2};
      jsExportDefault                      = {fg=black.yellow2};
      jsExtendsKeyword                     = {fg=black.purple2,  style='italic'};
      javaScriptReserved                   = {fg=black.blue};
      javaScriptConditional                = {fg=black.purple2};
      javaScriptStringS                    = {fg=black.yellow};
      javaScriptBoolean                    = {fg=black.red};
      javaScriptBraces                     = {fg=black.cyan};
      javaScriptLineComment                = {fg=black.gray,    style='italic'};
      javaScriptSpecial                    = {fg=black.red2};
      javaScriptFunction                   = {fg=black.blue};
      javaScriptStatement                  = {fg=black.purple2};
      javaScriptException                  = {fg=black.green};
      scssSelectorName                     = {fg=black.green};
      cssTagName                           = {fg=black.red};
      cssClassName                         = {fg=black.green,   style='italic'};
      cssClassNameDot                      = {fg=black.green,   style='italic'};
      cssBraces                            = {fg=black.cyan};
      cssPositioningProp                   = {fg=black.yellow2};
      cssBoxProp                           = {fg=black.yellow2};
      cssDimensionProp                     = {fg=black.yellow2};
      cssTransitionProp                    = {fg=black.yellow2};
      cssTextProp                          = {fg=black.yellow2};
      cssFontProp                          = {fg=black.yellow2};
      cssBorderProp                        = {fg=black.yellow2};
      cssBackgroundProp                    = {fg=black.yellow2};
      cssUIProp                            = {fg=black.yellow2};
      cssIEUIProp                          = {fg=black.red};
      scssFunctionName                     = {fg=black.green};
      cssPositioningAttr                   = {fg=black.red};
      cssTableAttr                         = {fg=black.red};
      cssCommonAttr                        = {fg=black.red};
      cssColorProp                         = {fg=black.yellow2};
      cssIncludeKeyword                    = {fg=black.yellow2};
      cssKeyFrameSelector                  = {fg=black.green};
      cssPseudoClassId                     = {fg=black.green,   style='italic'};
      cssBorderAttr                        = {fg=black.red};
      cssValueLength                       = {fg=black.red2};
      cssUnitDecorators                    = {fg=black.yellow3};
      cssIdentifier                        = {fg=black.yellow4, style='italic'};
      markdownHeadingDelimiter             = {fg=black.gray};
      markdownCodeDelimiter                = {fg=black.yellow};
      markdownCode                         = {fg=black.white};
      mkdCodeStart                         = {fg=black.cyan};
      mkdCodeEnd                           = {fg=black.cyan};
      mkdLinkDef                           = {fg=black.yellow2};
      mkdCodeDelimiter                     = {fg=black.gray,    bg=black.black};
      htmlH1                               = {fg=black.blue,    style='bold'};
      htmlH2                               = {fg=black.blue,    style='bold'};
      htmlH3                               = {fg=black.blue,    style='bold'};
      htmlH4                               = {fg=black.blue};
      htmlH5                               = {fg=black.blue};
      htmlBold                             = {fg=black.purple2,  bg=black.black  ,style='bold'};
      shComment                            = {fg=black.gray,    bg=black.black  ,style='italic'};
      NERDTreeDir                          = {fg=black.hoki};
      NERDTreeOpenable                     = {fg=black.red};
      NERDTreeClosable                     = {fg=black.yellow};
      NERDTreeHelp                         = {fg=black.gray4,   style='italic'};
      NERDTreeUp                           = {fg=black.gray};
      NERDTreeDirSlash                     = {fg=black.gray};
      gitcommitSummary                     = {fg=black.cyan};
      IndentGuidesOdd                      = {bg=black.gray4};
      IndentGuidesEven                     = {bg=black.gray7};
      GitGutterAdd                         = {fg=black.green};
      GitGutterChange                      = {fg=black.yellow};
      GitGutterDelete                      = {fg=black.red};
      GitGutterChangeDelete                = {fg=black.yellow};
      LspDiagnosticsSignError              = {fg=black.error_fg};
      LspDiagnosticsSignWarning            = {fg=black.warn_fg};
      LspDiagnosticsSignInformation        = {fg=black.info_fg};
      LspDiagnosticsSignHint               = {fg=black.hint_fg};
      LspDiagnosticsVirtualTextError       = {fg=black.error_fg};
      LspDiagnosticsVirtualTextWarning     = {fg=black.warn_fg};
      LspDiagnosticsVirtualTextInformation = {fg=black.info_fg};
      LspDiagnosticsVirtualTextHint        = {fg=black.hint_fg};
      LspDiagnosticsUnderlineError         = {style="undercurl",sp=black.error_fg};
      LspDiagnosticsUnderlineWarning       = {style="undercurl",sp=black.warn_fg};
      LspDiagnosticsUnderlineInformation   = {style="undercurl",sp=black.info_fg};
      LspDiagnosticsUnderlineHint          = {style="undercurl",sp=black.hint_fg};
    }
    return syntax
  end


  function black.get_black_color()
    return black
  end

  function black.colorscheme()
    vim.api.nvim_command('hi clear')
    if vim.fn.exists('syntax_on') then
      vim.api.nvim_command('syntax reset')
    end
    vim.o.background = 'dark'
    vim.o.termguicolors = true

    black.terminal_color()
    local syntax = black.load_syntax()

    for group,colors in pairs(syntax) do
      black.highlight(group,colors)
    end
  end

  black.colorscheme()

  return black
