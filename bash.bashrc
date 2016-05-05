# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions


# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

# Uncomment to use the terminal colours set in DIR_COLORS
# eval "$(dircolors -b /etc/DIR_COLORS)"

GIT_SHARE=/usr/share/git-core
source $GIT_SHARE/contrib/completion/git-completion.bash
source $GIT_SHARE/contrib/completion/git-prompt.sh

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

alias ll='ls -alh'
alias gst='git status'
alias gdf='git diff'
alias sc='sudo systemctl'
alias dk='sudo docker'

