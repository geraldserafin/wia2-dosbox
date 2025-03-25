{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { nixpkgs, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (system:
      let pkgs = nixpkgs.legacyPackages.${system};
      in {
        apps.default = {
          type = "app";
          program = "${pkgs.writeShellScript "dosbox-run" ''
            DIR="''${1:-$(pwd)}"

            ${pkgs.dosbox}/bin/dosbox \
              -conf <(echo "
                ${builtins.readFile ./dosbox.conf}
                mount d ${./dosfiles}
                mount c \"$DIR\"
                c:
                D:\autoexec.bat
              ")
          ''}";
        };
      });
}
