{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }:
  let
    pkgs = nixpkgs.legacyPackages.x86_64-linux;
  in
  {
    devShells.x86_64-linux.default = pkgs.mkShell {
      buildInputs = [
        pkgs.git
        pkgs.neovim
        pkgs.i3
        pkgs.tmux
        pkgs.alacritty
        pkgs.picom
        pkgs.jq
        pkgs.feh
        pkgs.stow
        pkgs.fzf
        pkgs.curl
        pkgs.tldr
        pkgs.fd
        pkgs.ripgrep
        pkgs.flameshot
        pkgs.cmake
        pkgs.gcc
        pkgs.docker
      ];
    };
  };
}
