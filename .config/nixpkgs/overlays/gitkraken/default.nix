self: super: {
  gitkraken = with super; gitkraken.overrideAttrs(attrs: rec {
    name = "gitkraken-${version}";
    version= "4.0.2";
    src = fetchurl {
      url = "https://release.gitkraken.com/linux/v${version}.deb";
      sha256 = "0dnckd75fcgc9wa4ivbnw2djmk4phzzr891snhxpsvb1dhlc7rgx";
    };
  });
}

