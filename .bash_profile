####
# Do not place configuration here.
#
# Because .bash_profile has precedence over .bashrc,
# this file is necessary to guard against creating
# a .bash_profile and accidentally overriding all
# of the configuration in .bashrc
#
# All it should do is load .bashrc
###

source "$HOME/.bashrc"

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
