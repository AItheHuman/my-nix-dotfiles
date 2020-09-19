# run "xmodmap -pke" for full key list

## Letters Row 1 : q to \
xmodmap -e "keycode 24 = l L l L"
xmodmap -e "keycode 25 = h H h H"
xmodmap -e "keycode 26 = d D d D"
xmodmap -e "keycode 27 = c C c C"
xmodmap -e "keycode 28 = bracketleft braceleft bracketleft braceleft"
xmodmap -e "keycode 29 = F11 U2507 F11 U2507 F11 F11 XF86Switch_VT_11"   # shift-F11 changed to three-squares
xmodmap -e "keycode 30 = bracketright braceright bracketright braceright"
xmodmap -e "keycode 31 = w W w W"
xmodmap -e "keycode 32 = v V v V"
xmodmap -e "keycode 33 = comma less comma less"
xmodmap -e "keycode 34 = semicolon colon semicolon colon"
xmodmap -e "keycode 35 = slash question slash question"
# xmodmap -e "keycode 51 = backslash bar backslash bar"


## Letters Row 2 : a to '
xmodmap -e "keycode 38 = r R r R" 
xmodmap -e "keycode 39 = n N n N" 
xmodmap -e "keycode 40 = s S s S"
xmodmap -e "keycode 41 = t T t T"
xmodmap -e "keycode 42 = p P p P"
xmodmap -e "keycode 43 = F12 U27A4 F12 U27A4 F12 F12 XF86Switch_VT_12"   # changed shift-F12 to a unicode bullet
xmodmap -e "keycode 44 = u U u U"
xmodmap -e "keycode 45 = i I i I"
xmodmap -e "keycode 46 = a A a A"
xmodmap -e "keycode 47 = e E e E"
xmodmap -e "keycode 48 = o O o O"


## Letters Row 3 : z to /
xmodmap -e "keycode 52 = m M m M"
xmodmap -e "keycode 53 = b B b B"
xmodmap -e "keycode 54 = f F f F"
xmodmap -e "keycode 55 = g G g G"
xmodmap -e "keycode 56 = j J j J"
xmodmap -e "keycode 57 = q Q q Q"
xmodmap -e "keycode 58 = apostrophe quotedbl apostrophe quotedbl" 
xmodmap -e "keycode 59 = y Y y Y" 
xmodmap -e "keycode 60 = k K k K" 
xmodmap -e "keycode 61 = period greater period greater" 

## Lowest Row
# 133 U2023 U2507 U2023 U2507"   # change windows key to some keys for my emacs config

## F1 to F12 Row
xmodmap -e "keycode 67 = 6 asciicircum 6 asciicircum"
xmodmap -e "keycode 68 = 7 ampersand 7 ampersand "
# xmodmap -e "keycode 69 = F3 F3 F3 F3 F3 F3 XF86Switch_VT_3"
# xmodmap -e "keycode 70 = F4 F4 F4 F4 F4 F4 XF86Switch_VT_4"
# xmodmap -e "keycode 71 = F5 F5 F5 F5 F5 F5 XF86Switch_VT_5"
# xmodmap -e "keycode 72 = F6 F6 F6 F6 F6 F6 XF86Switch_VT_6"
# xmodmap -e "keycode 73 = F7 F7 F7 F7 F7 F7 XF86Switch_VT_7"
# xmodmap -e "keycode 74 = F8 F8 F8 F8 F8 F8 XF86Switch_VT_8"
# xmodmap -e "keycode 75 = F9 F9 F9 F9 F9 F9 XF86Switch_VT_9"
# xmodmap -e "keycode 76 = F10 F10 F10 F10 F10 F10 XF86Switch_VT_10"
xmodmap -e "keycode 95 = x X x X"
xmodmap -e "keycode 96 = z Z z Z"


## Number Row
# xmodmap -e "keycode 10 = "
# xmodmap -e "keycode 11 = "
# xmodmap -e "keycode 12 = "
# xmodmap -e "keycode 13 = "
# xmodmap -e "keycode 14 = "
xmodmap -e "keycode 15 = F1 U00BF F1 U00BF F1 F1 F1 XF86Switch_VT_1"  # shift-F2 changed to inverse question mark
xmodmap -e "keycode 16 = F2 U25CB F2 U25CB F2 F2 XF86Switch_VT_2"  
# xmodmap -e "keycode 17 = "
# xmodmap -e "keycode 18 = "
# xmodmap -e "keycode 19 = "
 
