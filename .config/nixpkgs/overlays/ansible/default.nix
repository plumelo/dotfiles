self: super: {
  ansible_2_6 = with super; ansible_2_5.overrideAttrs(attrs: rec {
    pname= "ansible";
    version = "2.6.1";
    name = "${pname}-${version}";
    src = fetchurl {
      url = "https://releases.ansible.com/ansible/${pname}-${version}.tar.gz";
      sha256  = "0g5d3jhazmnxvm96vy13daq4iczmfg107d9nv9xmsk1lhr921z51";
    }; 
    propagatedBuildInputs = attrs.propagatedBuildInputs ++ (with pkgs.python2.pkgs; [
      jmespath
    ]);
  }); 
}
