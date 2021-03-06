inherited frmOptions: TfrmOptions
  Left = 336
  Top = 191
  HelpContext = 1241
  BorderIcons = [biSystemMenu, biHelp]
  BorderStyle = bsDialog
  Caption = 'Options'
  ClientHeight = 439
  ClientWidth = 441
  Font.Name = 'MS Sans Serif'
  Position = poScreenCenter
  OnDestroy = FormDestroy
  ExplicitWidth = 447
  ExplicitHeight = 468
  PixelsPerInch = 96
  TextHeight = 13
  object pages: TPageControl
    Left = 8
    Top = 8
    Width = 425
    Height = 392
    ActivePage = tabEditor
    TabOrder = 0
    object tabGeneral: TTabSheet
      Caption = 'General'
      ImageIndex = 2
      object gbStartup: TGroupBox
        Left = 8
        Top = 8
        Width = 237
        Height = 73
        Caption = 'Startup'
        TabOrder = 0
        object chkShowStartupDialog: TCheckBox
          Left = 8
          Top = 20
          Width = 125
          Height = 17
          Caption = '&Show splash screen'
          TabOrder = 0
        end
        object chkAllowMultipleInstances: TCheckBox
          Left = 8
          Top = 44
          Width = 221
          Height = 17
          Caption = '&Allow multiple instances of TIKE'
          TabOrder = 1
        end
      end
      object cmdProxySettings: TButton
        Left = 3
        Top = 232
        Width = 125
        Height = 25
        Caption = '&Proxy Settings...'
        TabOrder = 5
        OnClick = cmdProxySettingsClick
      end
      object gbExternalEditor: TGroupBox
        Left = 3
        Top = 143
        Width = 237
        Height = 45
        Caption = '&External Editor Path'
        TabOrder = 2
        object editExternalEditorPath: TEdit
          Left = 8
          Top = 16
          Width = 141
          Height = 21
          TabOrder = 0
        end
        object cmdBrowseExternalEditor: TButton
          Left = 156
          Top = 16
          Width = 73
          Height = 21
          Caption = '&Browse...'
          TabOrder = 1
        end
      end
      object cmdSMTPSettings: TButton
        Left = 134
        Top = 232
        Width = 125
        Height = 25
        Caption = 'S&MTP Settings...'
        TabOrder = 4
        OnClick = cmdSMTPSettingsClick
      end
      object chkOpenKeyboardFilesInSourceView: TCheckBox
        Left = 8
        Top = 88
        Width = 221
        Height = 17
        Caption = 'Open &keyboard files in source view'
        TabOrder = 1
      end
      object cmdResetToolWindows: TButton
        Left = 3
        Top = 201
        Width = 125
        Height = 25
        Caption = '&Reset tool windows'
        TabOrder = 3
        OnClick = cmdResetToolWindowsClick
      end
    end
    object tabEditor: TTabSheet
      Caption = 'Editor'
      object lblIndentSize: TLabel
        Left = 8
        Top = 60
        Width = 51
        Height = 13
        Caption = '&Indent size'
        FocusControl = editIndentSize
      end
      object lblEditorTheme: TLabel
        Left = 3
        Top = 162
        Width = 62
        Height = 13
        Caption = 'Editor &theme:'
      end
      object lblEditorCustomTheme: TLabel
        Left = 120
        Top = 186
        Width = 187
        Height = 13
        AutoSize = False
        Caption = '(custom theme filename)'
      end
      object chkUseTab: TCheckBox
        Left = 8
        Top = 12
        Width = 129
        Height = 17
        Caption = '&Use tab character (x9)'
        TabOrder = 0
      end
      object editIndentSize: TEdit
        Left = 68
        Top = 56
        Width = 45
        Height = 21
        TabOrder = 1
      end
      object cmdDefaultFont: TButton
        Left = 8
        Top = 96
        Width = 101
        Height = 25
        Caption = 'Default &font...'
        TabOrder = 2
        OnClick = cmdDefaultFontClick
      end
      object panFontSample: TPanel
        Left = 120
        Top = 96
        Width = 187
        Height = 25
        BevelOuter = bvLowered
        Caption = '<font name>'
        TabOrder = 3
      end
      object cmdQuotedFont: TButton
        Left = 8
        Top = 128
        Width = 101
        Height = 25
        Caption = '&Quoted font...'
        TabOrder = 4
        OnClick = cmdQuotedFontClick
      end
      object panQuotedFontSample: TPanel
        Left = 120
        Top = 128
        Width = 187
        Height = 25
        BevelOuter = bvLowered
        Caption = '<font name>'
        TabOrder = 5
      end
      object chkLinkFontSizes: TCheckBox
        Left = 8
        Top = 32
        Width = 213
        Height = 17
        Caption = '&Link quoted font size to primary font size'
        TabOrder = 6
      end
      object cbEditorTheme: TComboBox
        Left = 120
        Top = 159
        Width = 187
        Height = 21
        Style = csDropDownList
        TabOrder = 7
        OnClick = cbEditorThemeClick
      end
    end
    object tabDebugger: TTabSheet
      Caption = 'Debugger'
      ImageIndex = 3
      object gbDebuggerSettings: TGroupBox
        Left = 8
        Top = 8
        Width = 313
        Height = 129
        Caption = 'Settings'
        TabOrder = 0
        object chkUseOldDebugger: TCheckBox
          Left = 8
          Top = 20
          Width = 217
          Height = 17
          Caption = '&Enable test window (from version 5.0)'
          TabOrder = 0
        end
        object chkDebuggerBreakWhenExitingLine: TCheckBox
          Left = 8
          Top = 40
          Width = 205
          Height = 17
          Caption = '&Breakpoints fire also when exiting line'
          TabOrder = 1
        end
        object chkDebuggerSingleStepAfterBreak: TCheckBox
          Left = 8
          Top = 60
          Width = 197
          Height = 17
          Caption = '&Turn on single step after breakpoint'
          TabOrder = 2
        end
        object chkDebuggerShowStoreOffset: TCheckBox
          Left = 8
          Top = 80
          Width = 217
          Height = 17
          Caption = '&Show matched character offsets in stores'
          TabOrder = 3
        end
        object chkDebuggerAutoRecompile: TCheckBox
          Left = 8
          Top = 100
          Width = 289
          Height = 17
          Caption = '&Automatically recompile if no debug information available'
          TabOrder = 4
        end
      end
      object gbWebHost: TGroupBox
        Left = 8
        Top = 143
        Width = 313
        Height = 89
        Caption = 'Web Host'
        TabOrder = 1
        object lblWebHostDefaultPort: TLabel
          Left = 8
          Top = 31
          Width = 55
          Height = 13
          Caption = 'Default port'
        end
        object editWebHostDefaultPort: TEdit
          Left = 84
          Top = 28
          Width = 61
          Height = 21
          TabOrder = 0
          Text = 'editWebHostDefaultPort'
          OnKeyPress = editWebHostDefaultPortKeyPress
        end
      end
    end
    object tabCharMap: TTabSheet
      Caption = 'Character Map'
      ImageIndex = 4
      object gbCharMapCharacterLookups: TGroupBox
        Left = 8
        Top = 8
        Width = 261
        Height = 65
        Caption = 'Character Lookups'
        TabOrder = 0
        object chkCharMapAutoLookup: TCheckBox
          Left = 8
          Top = 20
          Width = 221
          Height = 17
          Caption = '&Find character under cursor automatically'
          TabOrder = 0
        end
        object chkCharMapDisableDatabaseLookups: TCheckBox
          Left = 8
          Top = 40
          Width = 221
          Height = 17
          Caption = '&Disable database lookups'
          TabOrder = 1
        end
      end
      object gbCharMapCharacterDatabase: TGroupBox
        Left = 8
        Top = 80
        Width = 261
        Height = 125
        Caption = 'Character Database'
        TabOrder = 1
        object TntLabel1: TLabel
          Left = 8
          Top = 21
          Width = 74
          Height = 13
          Caption = 'Database Path:'
        end
        object cmdCharMapRebuildDatabase: TButton
          Left = 8
          Top = 72
          Width = 113
          Height = 25
          Caption = '&Update database...'
          TabOrder = 0
          OnClick = cmdCharMapRebuildDatabaseClick
        end
        object editDatabasePath: TEdit
          Left = 96
          Top = 18
          Width = 157
          Height = 21
          ParentColor = True
          ReadOnly = True
          TabOrder = 1
        end
      end
    end
  end
  object cmdCancel: TButton
    Left = 356
    Top = 406
    Width = 73
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
  end
  object cmdOK: TButton
    Left = 276
    Top = 406
    Width = 73
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 2
    OnClick = cmdOKClick
  end
  object dlgFonts: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = []
    Left = 48
    Top = 404
  end
  object dlgBrowse: TOpenDialog
    DefaultExt = 'exe'
    Filter = 'Programs (*.exe)|*.exe|All files (*.*)|*.*'
    Options = [ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Title = 'Browse for External Editor'
    Left = 84
    Top = 404
  end
  object dlgBrowseUnicodeData: TOpenDialog
    DefaultExt = 'txt'
    Filter = 'Unicode Data Files (*.txt)|*.txt|All files (*.*)|*.*'
    Title = 'Browse for Unicode Data Files'
    Left = 132
    Top = 404
  end
  object dlgBrowseEditorTheme: TOpenDialog
    DefaultExt = 'json'
    Filter = 'Custom theme JSON (*.json)|*.json|All files (*.*)|*.*'
    Options = [ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Title = 'Browse for Editor Theme'
    Left = 212
    Top = 403
  end
end
