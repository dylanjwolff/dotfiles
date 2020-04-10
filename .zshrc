(cat ~/.cache/wal/sequences &)

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt extendedglob
bindkey -v
# End of lines configured by zsh-newuser-install

# Powerline config... packages are powerline and powerline-fonts from pacman
powerline-daemon -q
. /usr/lib/python3.7/site-packages/powerline/bindings/zsh/powerline.zsh

# Antigen configuration
source antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle pip
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme simple
# antigen theme amuse

# Pure theme requires this instead of using "antigen theme"
# antigen bundle mafredri/zsh-async
# antigen bundle sindresorhus/pure

# Tell Antigen that you're done.
antigen apply

# opam configuration
test -r /home/dylan/.opam/opam-init/init.zsh && . /home/dylan/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
export PATH="/home/dylan/.local/bin:$PATH"
