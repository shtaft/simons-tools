# virtualenv setup
export WORKON_HOME=/Users/$USERNAME/code/.virtualenvs
export PROJECT_HOME=/Users/$USERNAME/code/
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
source /usr/local/bin/virtualenvwrapper.sh

# add hombrew bin to PATH
export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/sbin:$PATH"

##########
# Config #
##########
set -o vi   # VIM bindings for shell

#############
# Shortcuts #
#############
alias burp="java -jar -Xmx1024m ~/Documents/Tools/burp/burp.jar"
alias rmpyc="find . -name '*.pyc' -exec rm -rf {} \;"
alias ll="ls -lGfh"
alias net="netstat -c"
