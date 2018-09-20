self: super:
let 
  native = self.plumNative;
in {
  plumelo = with self; buildEnv {
    name  = "plumelo";
    paths = [
      #general
      (native ag)
      ripgrep
      p7zip
      (native unzip)
      (native zip)
      (native ctags)
      unrar
      fd
      xclip
      gnumake
      nerdfonts
      ntfs3g
      usbutils

      # monitoring
      python27Packages.glances
      htop

      # audio
      python35Packages.mps-youtube
      python35Packages.youtube-dl
      mpv
      mplayer
      cava

      # office
      libreoffice-fresh
      unoconv
      zathura

      # browsers
      firefox
      chromium
      google-chrome
      chromedriver
      epiphany

      # communication
      neomutt
      slack
      skypeforlinux
      libnotify
      (weechat.override {configure = {availablePlugins, ...}: {
        plugins = with availablePlugins; [
          (python.withPackages (ps: with ps; [
            websocket_client
          ]))
        ];};
      })

      # accounting
      ledger

      # editors
      atom
      (native editorconfig-core-c)
      # (native vim)
      (import ../vim/vim.nix)
      vim-vint
      (native neovim)
      python27Packages.neovim
      python36Packages.neovim
      python27Packages.yamllint
      python27Packages.flake8
      python36Packages.flake8

      # terminals
      termite

      # file managers
      filezilla
      vifm
      mc
      ranger

      # langs
      (native nodejs-8_x)
      (native ruby)
      yarn
      python27Full
      python36Full

      # misc
      (native keepassxc)
      taskwarrior
      transmission_gtk
      stress
      glmark2

      # git
      (native gitAndTools.tig)
      (native git-lfs)
      (native git)
      gitkraken
      gitAndTools.diff-so-fancy
      # configuration management
      vagrant_2
      redir
      bridge-utils
      ansible_2_6
      avocode
      distrobuilder

      # sway
      termite
      i3blocks
      polybar
      pavucontrol
      imv
      mpg123
    ];
  };
}
