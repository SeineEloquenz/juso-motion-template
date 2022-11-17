{
  description = "Juso motion template nix package";

  outputs = { self, nixpkgs }: {
    packages.x86_64-linux.juso-motion-template =
      let 
        pkgs = import nixpkgs {
          system = "x86_64-linux";
        };
      in pkgs.stdenv.mkDerivation {
        version = "v1.0.0";
        pname = "texlive-juso-antrag-template";
        tlType = "run";

        src = ./src;

        dontBuild = true;

        installPhase = "
          mkdir -p $out/tex/latex
          cp -va *.cls *.png $out/tex/latex
        ";
      };
    packages.x86_64-linux.default = self.packages.x86_64-linux.juso-motion-template;
  };
}
