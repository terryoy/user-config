alias pip="pip3"

VIRTUALENVWRAPPER_PYTHON=`which python3`
WORKON_HOME=~/.venv
VENV_SCRIPT=`which virtualenvwrapper.sh`

[ -e $VENV_SCRIPT ] || VENV_SCRIPT='~/.local/bin/virtualenvwrapper.sh'
source $VENV_SCRIPT

function gi() { curl -sL https://www.gitignore.io/api/$@ ;}

function tms() {
    if [ "tmux has-session $1" ]; 
    then
        tmux attach-session -t $1
    else
        tmux new-session -s $1
    fi
}
