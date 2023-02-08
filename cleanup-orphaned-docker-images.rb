#!/usr/bin/env ruby

$command = system("which docker") ? "docker" : "podman"

`#{$command} image ls -a`.lines
  .filter { |line| line.include?("<none>") }
  .map(&:split)
  .map { |sections| sections[2] }
  .then { |images| system("#{$command} image rm #{images.join(" ")}") }
