{ stdenv, fetchurl}:

stdenv.mkDerivation rec {
  version = "1.10.19";
  pname = "php-pearweb-phars";

  src = fetchurl {
    url = "http://download.pear.php.net/package/pearweb_phars-${version}.tgz";
    sha256 = "07mhav3vvg7hwkqb7zn4c2yxrl7s4lck15ggz8h7xm9nc85a1vz2";
  };

  phases = [ "unpackPhase" "installPhase" ];

  installPhase = ''
    install -Dm0444 install-pear-nozlib.phar $out/install-pear-nozlib.phar
  '';
}
