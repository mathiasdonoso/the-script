{
  description = "Linux workstation";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs }: {
    devShells.default = nixpkgs.lib.mkShell {
      buildInputs = with nixpkgs.legacyPackages.x86_64-linux; [
        git
        tmux
        i3
        jq
        feh
        stow
        fzf
        curl
        tldr
        fd
        ripgrep
        flameshot
        cmake
        gcc
        docker
        alacritty
        picom
      ];

      shellHook = ''
        echo "Loading environment..."
        export EDITOR=nvim
      '';
    };
  };
}
