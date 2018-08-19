self: super: {
  ansible_2_6 = with super; ansible_2_6.overrideAttrs(attrs: rec {
    propagatedBuildInputs = attrs.propagatedBuildInputs ++ (with pkgs.python2.pkgs; [
      jmespath
    ]);
  }); 
}
