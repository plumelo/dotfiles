function install-fisher
  echo "Installing fisher"
  curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher
end

if not test -e ~/.config/fish/functions/fisher.fish
  install-fisher
  echo "Installing fisher plugins"
  fisher
end

