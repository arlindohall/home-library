#!/usr/bin/env ruby

require "pathname"

Dir.chdir(Pathname.new(__FILE__).parent)

$command = system("which docker") ? "docker" : "podman"

system "#{$command} build -t home-library:latest ."
