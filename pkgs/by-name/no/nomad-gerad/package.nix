{
  stdenv,
  fetchFromGitHub,
  cmake,
}:

stdenv.mkDerivation (finalAttrs: {
  pname = "nomad-gerad";
  version = "4.5.1";

  src = fetchFromGitHub {
    owner = "bbopt";
    repo = "nomad";
    tag = "v.${finalAttrs.version}";
    hash = "sha256-KPgX++036Vfk/KPJcalQA1TJrSZKr/ryLE7Ow30jVK4=";
  };

  preConfigure = ''
    export NOMAD_HOME=$(realpath .)
  '';

  nativeBuildInputs = [
    cmake
  ];

  meta = { };
})
