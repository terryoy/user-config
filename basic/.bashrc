alias pip="pip3"

VIRTUALENVWRAPPER_PYTHON=`which python3`
WORKON_HOME=~/.venv
VENV_SCRIPT=`which virtualenvwrapper.sh`

[ -e $VENV_SCRIPT ] || VENV_SCRIPT='~/.local/bin/virtualenvwrapper.sh'
source $VENV_SCRIPT

# gitignore
function gi() { curl -sL https://www.gitignore.io/api/$@ ;}

# tmux with a session name(auto attach if exists)
function tms() {
    if [ test "tmux has-session -t $1" ]; 
    then
        tmux attach-session -t $1
    else
        TMCONF=~/.tmux/$1.conf
        if [ test -f "$TMCONF" ];
        then
            tmux new-session -s $1 \; source-file $TMCONF
        else 
            tmux new-session -s $1
        fi
    fi
}
