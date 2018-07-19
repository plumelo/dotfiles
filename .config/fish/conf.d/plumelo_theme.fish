set -g theme_nerd_fonts yes
set -g theme_color_scheme base16-dark
set -g theme_display_date "no"

function fish_greeting
end

if command -s dircolors > /dev/null; and test -e ~/.dircolors
  eval (dircolors -c ~/.dircolors | sed 's/>&\/dev\/null$//')
end

function bobthefish_colors -S -d 'Define a custom bobthefish color scheme'
  __bobthefish_colors base16-dark

  set -l base00 282c34
  set -l base01 353b45
  set -l base02 3e4451
  set -l base03 545862
  set -l base04 565c64
  set -l base05 abb2bf
  set -l base06 b6bdca
  set -l base07 c8ccd4
  set -l base08 e06c75 #red
  set -l base08a be5046 #red
  set -l base09 d19a66
  set -l base0A e5c07b
  set -l base0B 98c379
  set -l base0Ba 7a9f60
  set -l base0C 56b6c2
  set -l base0D 61afef
  set -l base0Da 3b84c0
  set -l base0E c678dd
  set -l base0F be5046
  
  set -l colorfg $base02

  set -x color_initial_segment_exit     $base07 $base08a --bold
  set -x color_initial_segment_su       $base07 $base0Ba --bold
  set -x color_initial_segment_jobs     $base07 $base0Da --bold

  set -x color_path                     $base02 $base07
  set -x color_path_basename            $base02 $base07 --bold
  set -x color_path_nowrite             $base02 $base08
  set -x color_path_nowrite_basename    $base02 $base08a --bold

  set -x color_repo                     $base0Ba $base07
  set -x color_repo_work_tree           $base02 $base07 --bold
  set -x color_repo_dirty               $base08a $base07
  set -x color_repo_staged              $base09 $base07

  set -x color_vi_mode_default          $base03 $colorfg --bold
  set -x color_vi_mode_insert           $base0B $colorfg --bold
  set -x color_vi_mode_visual           $base09 $colorfg --bold

  set -x color_vagrant                  $base0C $colorfg --bold
  set -x color_username                 $base02 $base0D --bold
  set -x color_hostname                 $base02 $base0D
  set -x color_rvm                      $base08a $base07 --bold
  set -x color_virtualfish              $base0D $colorfg --bold
  set -x color_virtualgo                $base0D $colorfg --bold
  set -x color_desk                     $base0D $colorfg --bold
end
