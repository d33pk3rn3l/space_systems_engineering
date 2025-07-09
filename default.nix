let
  pkgs = import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/412e75e351de85d98baf9124f45a8944b9278c58.tar.gz") {};
  quartz-src = pkgs.fetchFromGitHub {
    owner = "jackyzha0";
    repo = "quartz";
    rev = "v4.0.8";
    sha256 = "sha256-bdn3ovklgAZt1mlYSofEwAjb6j4EAlZGK0ie1AeR9do=";
  };
  # pre-fetch dependencies for the quartz build to avoid
  # network dependency when building the site below
  quartz-deps = pkgs.buildNpmPackage {
    pname = "quartz-deps";
    version = "4.0.8";
    src = quartz-src;
    npmDepsHash = "sha256-H+G9KAn8PXtGM81TpHjNrmfWrORI4e/fwFLZqR+E5Ls=";
    npmFlags = [ "--ignore-scripts" ];
    dontNpmBuild = true;
    installPhase = ''
      mkdir -p $out
      cp -r node_modules $out/
      cp package*.json $out/
    '';
  };
in
pkgs.stdenv.mkDerivation {
  name = "sse-site";
  src = ./.;
  buildInputs = [
    pkgs.nodejs_24
  ];
  buildPhase = ''
    cd $TMPDIR

    export HOME=$(pwd)
    
    # Fetch quartz
    cp -r ${quartz-src} ./quartz
    chmod -R u+w ./quartz

    # Copy pre-built dependencies
    cp -r ${quartz-deps}/node_modules ./quartz/
    cp ${quartz-deps}/package*.json ./quartz/

    # Copy markdown files
    cp -r $src/content/* ./quartz/content

    # Build the site
    cd quartz
    # `npx quartz build` will not work, so we invoke it manually:
    node quartz/bootstrap-cli.mjs build
  '';
  installPhase = ''
    mkdir -p $out

    # Copy site artifacts
    cp -r public/* $out/
  '';
  shellHook = ''
    echo "for manual development:"
    echo "  * git clone https://github.com/jackyzha0/quartz"
    echo "  * cp -r content/* quartz/content/"
    echo "  * cd quartz"
    echo "  * npm install"
    echo "  * node quartz/bootstrap-cli.mjs build --serve"

    export LD_LIBRARY_PATH="${pkgs.lib.makeLibraryPath [ pkgs.musl ]}"
  '';
}