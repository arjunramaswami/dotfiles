#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

set -o vi

#  ---------- wal -------------
# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
(cat ~/.cache/wal/sequences &)

# Alternative (blocks terminal for 0-3ms)
cat ~/.cache/wal/sequences

# To add support for TTYs this line can be optionally added.
source ~/.cache/wal/colors-tty.sh

# -------- Aliases -----------

## sshfs cc
alias sshfscc='sshfs cc://upb/departments/pc2/scratch/arjunr mnt/'

## sshfs ws
alias sshfsws='sshfs ws://home/webserver/www mnt/'

# call ranger with r
alias r='ranger'
