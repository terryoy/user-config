#!/bin/sh

# PIP
alias pip="pip3"


# Python Virtual Environment
export VIRTUALENVWRAPPER_PYTHON=`which python3`
export WORKON_HOME=~/.venv
VENV_SCRIPT=`which virtualenvwrapper.sh`

[ -e $VENV_SCRIPT ] || VENV_SCRIPT='~/.local/bin/virtualenvwrapper.sh'
if [[ -f $VENV_SCRIPT ]]
then
    source $VENV_SCRIPT
fi

