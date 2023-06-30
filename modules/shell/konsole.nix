#
# Git
#
{ config, pkgs, lib, ... }:
{
    environment.systemPackages = [
        pkgs.libsForQt5.konsole
  ];
}
