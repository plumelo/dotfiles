self: super:

let 
  buildEnv = self.buildEnv;
  native = self.plumNative;
in {
  plumelo = with self; buildEnv {
    name  = "plumelo";
    paths = [
      #general
      (native ag)
      ripgrep
      p7zip
      unrar
      gnumake
      nerdfonts

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
      #libreoffice-fresh
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
      (native vim)
      vim-vint
      (native neovim)
      python27Packages.neovim
      python36Packages.neovim
      python27Packages.yamllint

      # langs
      (native nodejs-8_x)
      (native ruby)

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

      # configuration management
      vagrant
      redir
      bridge-utils
      ansible_2_4
      avocode
      distrobuilder

      #files
      ranger

      # sway
      i3blocks
      polybar
      pavucontrol
    ];
  };
}
