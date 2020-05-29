alias pip="pip3"

VIRTUALENVWRAPPER_PYTHON=`which python3`
WORKON_HOME=~/.venv
VENV_SCRIPT=`which virtualenvwrapper.sh`

[ -e $VENV_SCRIPT ] || VENV_SCRIPT='~/.local/bin/virtualenvwrapper.sh'
if [[ -f $VENV_SCRIPT ]]
then
    source $VENV_SCRIPT
fi

# gitignore
function gi() { curl -sL https://www.gitignore.io/api/$@ ;}

# tmux with a session name(auto attach if exists)
function tms() {
    if [ -z "$1"  ]; then
        echo "Please specify the name of an existing session or a new session. Current sessions:"
        tmux list-sessions        
    elif  tmux has-session -t $1 2>/dev/null ; then
        echo "Attach to session: $1"
        tmux attach-session -t $1
    else
        TMCONF=~/.tmux/$1.conf
        if [ -f "$TMCONF" ] ; then
            echo "Create new session [$1] with config: ${TMCONF}"
            tmux new-session -s $1 \; source-file $TMCONF
        else 
            echo "Create new session [$1]"
            tmux new-session -s $1
        fi
    fi
} 

alias tml="tmux list-sessions"
