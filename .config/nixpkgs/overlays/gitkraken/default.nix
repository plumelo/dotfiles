self: super:
let
  unstable = import <nixos-unstable> {
    config.allowUnfree = true;
  };
in {
  gitkraken_latest = unstable.gitkraken.overrideAttrs(old: rec {
    version = "3.5.0";
    src = self.fetchurl {
      url = "https://release.gitkraken.com/linux/v${version}.deb";
      sha256 = "0rdzijzbksvycxlwdrw8gvfnyakc6x1h9gkjsz9kcpdikl40mrs5";
    };
  });
}

