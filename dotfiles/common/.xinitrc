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

# turn off screensaver
xset -dpms
xset s off

# start xscreensaver
#xscreensaver &

# PATHS / Variables
# export PATH="${PATH}:~/self/dotflies/scripts"
export HOME_AP_SSID="Portpourri GGGGG"
export HOME_SERVER_NAME="kan.local"
export QT_AUTO_SCREEN_SCALE_FACTOR=1
export QT_ENABLE_HIGHDPI_SCALING=1
export GDK_SCALE=1

# set Xresources
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# source stuff
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# exec wm
xrdb ~/.Xresources

exec i3
#exec gnome-session
