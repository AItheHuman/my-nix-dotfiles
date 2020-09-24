 { ... }: {
   "launch" = {
     "configurations" = [ ];
     "compounds" = [ ];
   };
   # See https://code.visualstudio.com/api/references/theme-color
   "workbench.iconTheme" = "material-icon-theme";
   "workbench.colorTheme" = "Dracula Soft";
   "window.titleBarStyle" = "custom";
   "workbench.colorCustomizations" = {
     "[Dracula Soft]" = {
       "editor.background" = "#000000";
       "sideBar.background" = "#000000"; # middle bar
       "menu.background" = "#1e1e1e";
       "titleBar.activeBackground" = "#000000";
       "activityBar.background" = "#110b11"; # left bar
       "titleBar.activeForeground" = "#ffffff";
       "titleBar.inactiveBackground" = "#000000";
       "titleBar.inactiveForeground" = "#cccccc";
       "button.background" = "#1e1e1e";
       "button.secondaryBackground" = "#1e1e1e";
       "scrollbarSlider.background" = "#110b11";
       "badge.background" = "#1e1e1e";
       "tab.activeBackground" = "#1e1e1e";
       "tab.inactiveBackground" = "#110b11";
       "editorGroupHeader.tabsBackground" = "#110b11";
       "list.focusBackground" = "#1e1e1e";
       "sideBarSectionHeader.background" = "#110b11";
       "breadcrumb.background" = "#110b11";
       "statusBar.background" = "#110b11";

       "peekViewEditor.background" = "#1e1e1e";
       "peekViewResult.background" = "#1e1e1e";

       # "tab.activeBackground" = "1e1e1e";
       # "editorGroupHeader.tabsBackground" = "1e1e1e";
       # "editorWidget.background" = "1e1e1e";
       # "list.dropBackground" = "1e1e1e";
       # "list.focusBackground" = "1e1e1e";
     };
   };
   "editor.renderWhitespace" = "none";

   # Python

   # Vim keys
   "keyboard.dispatch" = "keyCode";
   "vim.vimrc.path" = "~/.vimrc";
   "vim.vimrc.enable" = true;
   "vim.easymotion" = true;
   "vim.incsearch" = true;
   "vim.useSystemClipboard" = true;
   "vim.leader" = "<space>";
   "vim.easymotionKeys" = "rnstaouphdfvmb.ie";
   "vim.easymotionMarkerBackgroundColor" = "#000000";
   # "vim.easymotionMarkerBackgroundColor" = "#bd93f9";
   # "vim.easymotionDimColor": "#777777"
   "vim.easymotionMarkerForegroundColorOneChar" = "#FFFF00";
   "vim.easymotionMarkerForegroundColorTwoCharFirst" = "#FFFF00";
   "vim.easymotionMarkerForegroundColorTwoCharSecond" = "#FFFF00";

   "vim.normalModeKeyBindings" = [
     {
       "before" = [ "b" ];
       "after" = [ "t" ];
     }
     {
       "before" = [ "N" ];
       "after" = [ "A" ];
     }
     {
       "before" = [ "L" ];
       "after" = [ "E" ];
     }
     {
       "before" = [ "<leader>" "a" ];
       "after" = [ "<leader>" "<leader>" "j" ];
     }
     {
       "before" = [ "<leader>" "e" ];
       "after" = [ "<leader>" "<leader>" "k" ];
     }
     {
       "before" = [ "s" ];
       "after" = [ "<leader>" "<leader>" "s" ];
     }
   ];
   "vim.operatorPendingModeKeyBindings" = [
     {
       "before" = [ "b" ];
       "after" = [ "t" ];
     }
     {
       "before" = [ "L" ];
       "after" = [ "E" ];
     }
     {
       "before" = [ "w" ];
       "after" = [ "^" ];
     }
     {
       "before" = [ ";" ];
       "after" = [ "$" ];

     }
   ];
   "vim.visualModeKeyBindings" = [
     {
       "before" = [ "b" ];
       "after" = [ "t" ];
     }
     {
       "before" = [ "L" ];
       "after" = [ "E" ];
     }
     {
       "before" = [ "<leader>" "a" ];
       "after" = [ "<leader>" "<leader>" "j" ];
     }
     {
       "before" = [ "<leader>" "e" ];
       "after" = [ "<leader>" "<leader>" "k" ];
     }
     {
       "before" = [ "s" ];
       "after" = [ "<leader>" "<leader>" "s" ];
     }
   ];
 }
