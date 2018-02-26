self: super:

let 
  buildEnv = self.buildEnv;

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
      chromium
      google-chrome
      chromedriver
      epiphany

      # communication
      slack
      skypeforlinux

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
      nodejs
      ruby

      # misc
      keepassx-community
      taskwarrior
      transmission_gtk
      stress
      glmark2
      
      # git
      gitAndTools.tig
      git-lfs
      git-keyring
      gitkraken
      
      # configuration management
      vagrant
      redir
      bridge-utils
      ansible_2_4_3
    ];
  };
}
