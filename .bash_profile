# virtual envs
export WORKON_HOME=/Users/simon.taft/code/.virtualenvs
export PROJECT_HOME=/Users/simon.taft/code/
source /usr/local/bin/virtualenvwrapper.sh

# add hombrew bin to PATH
export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin

# misc configs
export FORGE_CONFIG=/Users/simon.taft/code/forge/forge/dev.ini
export FEZZIK_CONFIG=/Users/simon.taft/code/fezzik/fezzik/dev.ini
export ALEMBIC_CONFIG=/Users/simon.taft/code/forge/forge/alembic_dev.ini
export COUCH_BASE_URL=http://localhost:9999


#############
# Shortcuts #
#############
alias burp="java -jar -Xmx1024m ~/Documents/Tools/burp/burp.jar"
alias purgerabbit='rabbitmqadmin purge queue name=fezzik_callbacks && rabbitmqadmin purge queue name=process_normal_priority_sessions && rabbitmqadmin purge queue name=process_sessions && rabbitmqadmin purge queue name=webhooks && rabbitmqadmin purge queue name=elastictranscoder_callbacks && rabbitmqadmin purge queue name=hogan_callbacks'
alias git_curr='current_git_branch'
# Kill all background jobs (watch out!)
alias clean="jobs -p | xargs kill -9"
alias rmpyc="find . -name '*.pyc' -exec rm -rf {} \;"
alias ..="cd .."
alias ll="ls -lGfh"
###################
# Pretty Terminal #
###################

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'
function title {
    echo -ne "\033]0;"$*"\007"
}

###############
# Git Helpers #
###############

# Handy
function current_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}

# Open branch in github
function github {
  BRANCH=$(current_git_branch)
  if [ -n "$BRANCH" ]; then
    PROJECT=${PWD##*/}
    open https://ghe.megaleo.com/backpack/$PROJECT/tree/$BRANCH
  fi
}

function gitreset {
  BRANCH=$(current_git_branch)
  if [ "$BRANCH" == "master" ] || [  "$BRANCH" == "devel"  ]; then
    git reset --hard origin/$BRANCH
  else
    echo "Not on master branch, skipping hard reset"
  fi
}


##########################
# Miscelaneous Functions #
##########################
function wo {
  title "$1" && workon "$1";
}

function parallel {
  for cmd in "$@"; do {
    echo "Process \"$cmd\" started";
    $cmd & pid=$!
    PID_LIST+=" $pid";
  } done
  trap "kill $PID_LIST" SIGINT
  echo "Parallel processes have started";
  wait $PID_LIST
  echo
  echo "All processes have completed";
}
