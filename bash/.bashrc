#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

set -o vi

   if [[ ":$PATH:" != *":./bin:"* ]]; then 
       export PATH="${PATH}:./bin:/home/christopher/software/labtainers/labtainer/trunk/scripts/designer/bin"
   fi
   export LABTAINER_DIR=/home/christopher/software/labtainers/labtainer/trunk
