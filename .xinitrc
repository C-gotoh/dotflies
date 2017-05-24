setxkbmap -option caps:swapescape
# xmodmap -e 'Clear Lock' # clear capslock
# xmodmap -e 'keycode 0x42=Escape' # map capslock = esc
# xmodmap -e 'keycode 0x9=Caps_Lock' # map esc = capslock 
xset r rate 200 30
xscreensaver &
exec i3
