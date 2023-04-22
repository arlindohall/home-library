#!/usr/bin/env ruby

require "pathname"

Dir.chdir(Pathname.new(__FILE__).parent.parent)

$command = system("which docker") ? "docker" : "podman"

system "#{$command} build -t home-library:latest ."
