# Register all aliases
for aliasToSource in "$DOTFILES/terminal/_aliases/"*; do source "$aliasToSource"; done
# Register all exports
for exportToSource in "$DOTFILES/terminal/_exports/"*; do source "$exportToSource"; done
# Register all functions
for functionToSource in "$DOTFILES/terminal/_functions/"*; do source "$functionToSource"; done
