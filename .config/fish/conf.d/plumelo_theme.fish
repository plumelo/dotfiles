set -g theme_nerd_fonts yes
set -g theme_color_scheme base16-dark
set -g theme_display_date "no"

function fish_greeting
end

if command -s dircolors > /dev/null; and test -e ~/.dircolors
  eval (dircolors -c ~/.dircolors | sed 's/>&\/dev\/null$//')
end

