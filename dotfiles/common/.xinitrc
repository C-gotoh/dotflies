# swap capslock and escape
setxkbmap -option caps:swapescape

# old solution with xmodmap
# xmodmap -e 'Clear Lock' # clear capslock
# xmodmap -e 'keycode 0x42=Escape' # map capslock = esc
# xmodmap -e 'keycode 0x9=Caps_Lock' # map esc = capslock 

# compose key
setxkbmap -option compose:ralt

# set keyboard repeat rate and delay
xset r rate 200 30

# start xscreensaver
xscreensaver &

# PATHS / Variables
export HOME_AP_SSID="Portpourri GGGGG"
export HOME_SERVER_NAME="kan.local"

# exec wm
exec i3
#exec gnome-session
