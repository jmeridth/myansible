if [[ -a ~/.jmaliases ]]
then
  source ~/.jmaliases
fi

# initialize autocomplete here, otherwise functions won't be loaded
autoload -U compinit
compinit

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
if [[ -s $HOME/.rvm/scripts/rvm ]] ; then source $HOME/.rvm/scripts/rvm ; fi
