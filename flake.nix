{
  description = "A basic flake with a shell";
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = {
    nixpkgs,
    flake-utils,
    ...
  }:
    flake-utils.lib.eachDefaultSystem (system: let
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      devShells.default = pkgs.mkShell {
        packages = [
          (pkgs.python311.withPackages (ps:
            with ps; [
              numpy
              asgiref
              django
              django-cors-headers
              django-filter
              djangorestframework
              djangorestframework-simplejwt
              et-xmlfile
              filelock
              fsspec
              graphviz
              importlib-metadata
              jinja2
              joblib
              markdown
              markupsafe
              mpmath
              networkx
              numpy
              openpyxl
              pandas
              pycodestyle
              pygraphviz
              pyjwt
              python-dateutil
              pytz
              scikit-learn
              scipy
              six
              sqlparse
              sympy
              threadpoolctl
              tomli
              torch
              typing-extensions
              tzdata
              zipp
            ]))
        ];
      };
    });
}
