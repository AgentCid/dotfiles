#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color --group-directories-first'
#LS_COLORS='di=32:fi=0:ln=36:pi=31:so=34:bd=35:cd=33:or=37:mi=37:ex=93'
#export LS_COLORS

#Bash Prompt
#PS1='[\u@\h \W]\$ '
#Add git prompt
source /usr/share/git/completion/git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWSTASHSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWCOLORHINTS=1
PS1='\[\e[1;32m\][\u@\h \W]$(__git_ps1 " (%s)")\$\[\e[0m\] '

alias vi=vim

#print current terminal
which_term(){
    term=$(ps -p $(ps -p $$ -o ppid=) -o args=);
    found=0;
    case $term in
        *gnome-terminal*)
            found=1
            echo "gnome-terminal " $(dpkg -l gnome-terminal | awk '/^ii/{print $3}')
            ;;
        *lxterminal*)
            found=1
            echo "lxterminal " $(dpkg -l lxterminal | awk '/^ii/{print $3}')
            ;;
        rxvt*)
            found=1
            echo "rxvt " $(dpkg -l rxvt | awk '/^ii/{print $3}')
            ;;
        ## Try and guess for any others
        *)
            for v in '-version' '--version' '-V' '-v'
            do
                $term "$v" &>/dev/null && eval $term $v && found=1 && break
            done
            ;;
    esac
    ## If none of the version arguments worked, try and get the 
    ## package version
    [ $found -eq 0 ] && echo "$term " $(dpkg -l $term | awk '/^ii/{print $3}')    
}

export VISUAL=gvim
export EDITOR=gvim
