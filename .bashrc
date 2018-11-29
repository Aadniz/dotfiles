#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '
PS1="\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;36m\]\u@\h\[\033[00m\]:\[\033[00;35m\]\w\[\033[00m\]\$ "

#export VISUAL=nano; export VISUAL EDITOR=editor; export EDITOR; PS1

COLORFGBG="default;default"
