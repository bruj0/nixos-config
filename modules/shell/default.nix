#
#  Shell
#
#  flake.nix
#   ├─ ./hosts
#   │   └─ home.nix
#   └─ ./modules
#       └─ ./shell
#           └─ default.nix *
#               └─ ...
#

[
  ./git.nix
  ./zsh.nix
  ./direnv.nix
  ./mc.nix
  ./fish.nix
  ./konsole.nix
]
