self: super:

let 
  buildEnv = self.buildEnv;
  unstable = import <nixos-unstable> {};
in {
  plumelo = with self; buildEnv {
    name  = "plumelo";
    paths = [
      #general
      ag
      ripgrep
      p7zip

      # audio
      python35Packages.mps-youtube
      python35Packages.youtube-dl
      mpv
      mplayer
      cava

      # office
      libreoffice-fresh
      unoconv

      # browsers
      firefox
      unstable.chromium
      google-chrome
      chromedriver
      epiphany

      # communication
      unstable.slack
      unstable.skypeforlinux

      # accounting
      ledger
      python27Packages.ledger-autosync
        
      # editors
      atom
      editorconfig-core-c
      vim_plum
      vim-vint
      neovim
      python27Packages.neovim
      python36Packages.neovim
      python27Packages.yamllint

      # langs
      nodejs-8_x 
      ruby

      # misc
      unstable.keepassx-community
      taskwarrior
      transmission_gtk
      stress
      glmark2
      
      # git
      gitAndTools.tig
      git-lfs
      git-keyring
      gitkraken_latest
      
      # configuration management
      unstable.vagrant
      redir
      bridge-utils
      unstable.ansible_2_4
    ];
  };
}
