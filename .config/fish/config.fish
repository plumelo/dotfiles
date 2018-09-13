function npm_link_chromedriver
  set -lx chromedriver_path (find "$PWD/node_modules" -path '**/chromedriver/*-chromedriver')
  if test -e $chromedriver_path
    echo "Linking chromedriver in $chromedriver_path"
    ln -sfn ~/.nix-profile/bin/chromedriver "$chromedriver_path"
  end
end

function codeclimate
  docker run \
    --interactive --tty --rm \
    --env CODECLIMATE_CODE="$PWD" \
    --volume "$PWD":/code \
    --volume /var/run/docker.sock:/var/run/docker.sock \
    --volume /tmp/cc:/tmp/cc \
    codeclimate/codeclimate $argv
end

function dotfiles
  git -c core.excludesFile=~/.dotignore --git-dir=$HOME/.dotfiles/ --work-tree=$HOME $argv
end

alias v='nvim'
alias vu='vagrant up'
alias vp='vagrant provision'
alias vrp='vagrant reload --provision'
alias vd='vagrant destroy'
alias vs='vagrant ssh'
alias vh='vagrant halt'
alias ds='dotfiles status'
alias da='dotfiles add'
alias dif='dotfiles diff'
alias df='dotfiles fetch'
alias dfa='dotfiles fetch --all --prune'
alias dc='dotfiles commit'
alias dp='dotfiles pull'
alias dP='dotfiles push'
alias drh='dotfiles reset --hard'
alias grf='git reflog --pretty=raw | tig --pretty=raw'
