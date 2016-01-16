# fpath=( "$HOME/Code/dotfiles/zsh/zfunctions" $fpath )

source "$(brew --prefix)/share/antibody.zsh"

# initialize autocomplete here, otherwise functions won't be loaded
autoload -U compinit && compinit

for file in $HOME/Code/dotfiles/zsh/rcplugins/*.zsh; do
  source $file
done


for file in $HOME/Code/dotfiles/zsh/rcfiles/*.zsh; do
  source $file
done

# These must be loaded last to function properly
# https://github.com/zsh-users/zsh-syntax-highlighting#why-must-zsh-syntax-highlightingzsh-be-sourced-at-the-end-of-the-zshrc-file
antibody bundle <<EOF
zsh-users/zsh-syntax-highlighting
zsh-users/zsh-history-substring-search
EOF
