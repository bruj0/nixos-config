#
# Git
#
{ config, pkgs, lib, ... }:
{
    environment.systemPackages = [
    pkgs.fish
  ];
}
