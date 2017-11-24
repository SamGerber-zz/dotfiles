# color constants
RED='\[\e[0;31m\]'
WHITE='\[\e[0;37m\]'
RESET='\[\e[0m\]'

# support for chruby
if [ -d /usr/local/opt/chruby ]; then
  source /usr/local/opt/chruby/share/chruby/chruby.sh
  source /usr/local/share/chruby/auto.sh
fi

# AWS keys
export AWS_SECRET_KEY=""
export AWS_SECRET_ACCESS_KEY=""
export AWS_ACCESS_KEY=""
export AWS_ACCESS_KEY_ID=""
export AWS_REGION="us-west-2"

# shortened prompt that includes git branch info
source ~/.dotfiles/bash-git-prompt/gitprompt.sh

# update bash history after every commmand instead of waiting until the
# shell is closed
export PROMPT_COMMAND="history -a"

# expand bash history buffer
export HISTSIZE=1000000
export HISTFILESIZE=1000000

# add postgres to path
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin:usr

# add jetpack to path
export PATH=$PATH:/Users/sam/.local/bin

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

# make atom the default text editor
export EDITOR="atom -nw"

### git ###

# setup git completion
source ~/.dotfiles/git-completion.bash

# make `g` behave like `git status` with no args, or `git` with args
g () {
  if [ $# -eq 0 ]
  then
    git status
  else
    git "$@"
  fi
}
__git_complete g _git

# Load aliases
[[ -f ~/.aliases ]] && source ~/.aliases

# Load local configuration
[[ -f ~/.bashrc.local ]] && source ~/.bashrc.local
# Run twolfson/sexy-bash-prompt
. ~/.bash_prompt

# Gross readline hack, source: https://github.com/rails/rails/issues/26658
ln -s /usr/local/opt/readline/lib/libreadline.7.0.dylib /usr/local/opt/readline/lib/libreadline.6.dylib

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

export PYTHONPATH=$PYTHONPATH:"/Users/sam"
