set PATH /bin /usr/local/sbin /usr/local/bin /usr/local/cuda-7.5/bin /usr/games /usr/bin /usr/lib/jvm/default/bin /usr/bin/site_perl /usr/bin/vendor_perl /usr/bin/core_perl
set -x TERM xterm-256color

# Start X at login
if status --is-login
  if test -z "$DISPLAY" -a $XDG_VTNR = 1
    exec startx -- -keeptty
  end
end

