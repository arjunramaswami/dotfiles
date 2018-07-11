#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

set -o vi

## sshfs cc
alias sshfscc='sshfs cc://upb/scratch/departments/pc2/groups/hpc-lco-plessl/arjunr mnt/'

## sshfs ws
alias sshfsws='sshfs ws://home/webserver/www mnt/'

# call ranger with r
alias r='ranger'
