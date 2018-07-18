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

