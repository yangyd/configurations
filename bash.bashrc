# To the extent possible under law, the author(s) have dedicated all 
# copyright and related and neighboring rights to this software to the 
# public domain worldwide. This software is distributed without any warranty. 
# You should have received a copy of the CC0 Public Domain Dedication along 
# with this software. 
# If not, see <http://creativecommons.org/publicdomain/zero/1.0/>. 

# base-files version 4.2-3

# /etc/bash.bashrc: executed by bash(1) for interactive shells.

# The latest version as installed by the Cygwin Setup program can
# always be found at /etc/defaults/etc/bash.bashrc

# Modifying /etc/bash.bashrc directly will prevent
# setup from updating it.

# System-wide bashrc file

# Check that we haven't already been sourced.
[[ -z ${CYG_SYS_BASHRC} ]] && CYG_SYS_BASHRC="1" || return

# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

# Exclude *dlls from TAB expansion
export EXECIGNORE="*.dll"

# Set a default prompt of: user@host and current_directory
# PS1='\[\e]0;\w\a\]\n\[\e[32m\]\u@\h \[\e[33m\]\w\[\e[0m\]\n\$ '

# Uncomment to use the terminal colours set in DIR_COLORS
# eval "$(dircolors -b /etc/DIR_COLORS)"

# ============================================================
#                      custom profile
# ============================================================

source $HOME/.local/share/git-completion.bash
source $HOME/.local/share/git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWSTASHSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWCOLORHINTS=1
GIT_PS1_DESCRIBE_STYLE="branch"

show_venv() {
  if [[ $VIRTUAL_ENV ]]; then
    echo "($(basename $VIRTUAL_ENV)) "
  fi
}

venv_short_name=``
# export PROMPT_COMMAND='__git_ps1 "\[\e]0;\w\a\]\n\[\e[32m\]\d \t \[\e[33m\]\w\[\e[0m\]\n" "\$ " "[ %s ] "'
export PROMPT_COMMAND='__git_ps1 "\[\e]0;\w\a\]\n\[\e[32m\]\d \t \[\e[33m\]\w\[\e[0m\]\n\$(show_venv)" "\$ " "[ %s ] "'

# environment settings
export userprofile=`cygpath --unix $USERPROFILE`

export TMP=$userprofile/AppData/Local/Temp
export TEMP=$TMP

export PATH=$HOME/bin:/usr/local/bin:/usr/bin
# export PATH=$PATH:`cygpath --unix "$JAVA_HOME"`/bin

export WORKON_HOME=$HOME/.venvs

alias ll='ls -alh'
alias gst='git status'
alias gdf='git diff'
alias here='cygpath -w `pwd`'

# gvm_init="$HOME/.gvm/bin/gvm-init.sh"
# [[ -s $gvm_init ]] && source $gvm_init

