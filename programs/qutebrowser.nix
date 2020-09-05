{ config, lib, pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;

  programs.qutebrowser = {
    enable = true;
    extraConfig = "
from qutebrowser.api import interceptor
def filter_yt(info: interceptor.Request):
    url = info.request_url
    if (url.host() == 'www.youtube.com' and
        url.path() == '/get_video_info' and
            '&adformat=' in url.query()):
        info.block()
interceptor.register(filter_yt)

c.content.cookies.store = True
c.hints.chars = 'rnstviaoe'

config.bind(';r', 'spawn --userscript qute-capture read')
config.bind(';w', 'spawn --userscript qute-capture write')
config.bind(';d', 'spawn --userscript qute-capture rm')
config.bind('j', 'enter-mode jump_mark')
config.bind('<Ctrl-=>', 'zoom-in')
config.bind('<Ctrl-->', 'zoom-out')
config.bind(';D', 'hint links download')
config.bind('<Shift-1>', 'tab-focus 1')
config.bind('<Shift-2>', 'tab-focus 2')
config.bind('<Shift-3>', 'tab-focus 3')
config.bind('<Shift-4>', 'tab-focus 4')
config.bind('<Shift-5>', 'tab-focus 5')
config.bind('<Shift-6>', 'tab-focus 6')
config.bind('<Shift-7>', 'tab-focus 7')
config.bind('<Shift-8>', 'tab-focus 8')
config.bind('<Shift-9>', 'tab-focus -1')
config.bind('Q', 'run-macro')
config.bind('<Ctrl-i>', 'tab-prev')
config.bind('<Ctrl-o>', 'tab-next')
config.bind('<Shift-i>', 'tab-prev')
config.bind('<Shift-o>','tab-next')
config.bind('<', 'set-cmd-text -s :open -t')
config.bind(',', 'tab-focus')
config.bind('s', 'hint')
config.bind('S', 'hint all tab')
config.bind('i', 'scroll left')
config.bind('r', 'enter-mode insert')
config.bind('a', 'scroll down')
config.bind('e', 'scroll up')
config.bind('o', 'scroll right')
config.bind('j', 'search-next')
config.bind('J', 'search-prev')
config.bind(',', 'set-cmd-text -s :open')
config.bind('w', 'move-to-end-of-line', mode='caret')
config.bind(';', 'move-to-start-of-line', mode='caret')
config.bind('G', 'move-to-end-of-document', mode='caret')
config.bind('I', 'scroll left', mode='caret')
config.bind('A', 'scroll down', mode='caret')
config.bind('E', 'scroll up', mode='caret')
config.bind('O', 'scroll right', mode='caret')
config.bind('h', 'move-to-prev-word', mode='caret')
config.bind('l', 'move-to-end-of-word', mode='caret')
config.bind('i', 'move-to-prev-char', mode='caret')
config.bind('a', 'move-to-next-line', mode='caret')
config.bind('e', 'move-to-prev-line', mode='caret')
config.bind('o', 'move-to-next-char', mode='caret')
config.bind('t', 'move-to-next-word', mode='caret')
config.bind('<Ctrl-a>', 'completion-item-focus --history next', mode='command')
config.bind('<Ctrl-e>', 'completion-item-focus --history prev', mode='command')
";
  };
}
