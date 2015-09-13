xrandr --output VIRTUAL1 --off --output eDP1 --mode 1920x1080 --pos 0x1920 --rotate normal --output DP1 --mode 1920x1200 --pos 1920x1800 --rotate normal --output DP2 --off --output HDMI2 --off --output HDMI1 --off --output VGA1 --mode 1920x1200 --pos 720x0 --rotate left

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

exec i3
