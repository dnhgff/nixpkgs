{ stdenv, callPackage }:
callPackage ./makeRustcDerivation.nix {
  shortVersion = "1.0.0-dev";
  isRelease = false;
  # src rev for master on 2015/03/09
  srcRev = "9539627ac76ca37d617a329dbd79c50c59cf59ee";
  srcSha = "1q0viqgpqnw2yjcmds7y616jysihjgcff17njk40fpgirisbyb9b";
  snapshotHashLinux686 = "1ef82402ed16f5a6d2f87a9a62eaa83170e249ec";
  snapshotHashLinux64 = "ef2154372e97a3cb687897d027fd51c8f2c5f349";
  snapshotHashDarwin686 = "ad263bdeadcf9bf1889426e0c1391a7cf277364e";
  snapshotHashDarwin64 = "01c8275828042264206b7acd8e86dc719a2f27aa";
  snapshotDate = "2015-03-27";
  snapshotRev = "5520801";
  patches = [
    ./patches/head.patch
  ] ++ stdenv.lib.optional stdenv.needsPax ./patches/grsec.patch;
}

