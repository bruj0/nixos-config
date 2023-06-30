#
#  Specific system configuration settings for desktop
#
#  flake.nix
#   ├─ ./hosts
#   │   └─ ./vm
#   │       ├─ default.nix *
#   │       └─ hardware-configuration.nix
#   └─ ./modules
#       └─ ./desktop
#           └─ ./bspwm
#               └─ bspwm.nix
#

{ config, pkgs, ... }:

{
  imports =  [                                  # For now, if applying to other system, swap files
    ./hardware-configuration.nix                # Current system hardware config @ /etc/nixos/hardware-configuration.nix
    ../../modules/desktop/kde/default.nix     # Window Manager
  ];

  boot = {                                      # Boot options
    kernelPackages = pkgs.linuxPackages_latest;

    loader = {                                  # For legacy boot
      systemd-boot = {
        enable = true;
        configurationLimit = 5;                 # Limit the amount of configurations
      };
      efi.canTouchEfiVariables = true;
      timeout = 1;                              # Grub auto select time
    };
  };

  services = {
    qemuGuest = {
      enable = true;
    }
    xserver = {                                 
      resolutions = [
        { x = 1920; y = 1080; }
        { x = 1600; y = 900; }
        { x = 3840; y = 2160; }
      ];
    };
  };
}
