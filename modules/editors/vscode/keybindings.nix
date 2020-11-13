{ ... }: [
  {
    "command" = "workbench.action.previousEditor";
    "key" = "alt+i";
  }
  {
    "command" = "workbench.action.nextEditor";
    "key" = "alt+o";
  }
  {
    "command" = "workbench.action.closeWindow";
    "key" = "alt+c";
    "when" = "!editorIsOpen && !multipleEditorGroups";
  }
  ### Remove keybindings
  ## Alt-c
  {
    "command" = "-toggleFindCaseSensitive";
    "key" = "alt+c";
  }
  {
    "command" = "-toggleSearchCaseSensitive";
    "key" = "alt+c";
  }
  {
    "command" = "-toggleSearchEditorCaseSensitive";
    "key" = "alt+c";
  }
  {
    "command" = "-workbench.action.terminal.toggleFindCaseSensitive";
    "key" = "alt+c";
  }
]
