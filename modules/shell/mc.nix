#
# Git
#
{ config, pkgs, lib, ... }:
{
    environment.systemPackages = [
    pkgs.mc
  ];
}
