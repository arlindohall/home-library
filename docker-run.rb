#!/usr/bin/env ruby

$port = ENV["PORT"] || 4080

$command = system("which docker") ? "docker" : "podman"

unless system("#{$command} image ls -a | grep home-library")
  puts "Run build-docker.rb first"
  exit 1
end

$restart = ENV["RESTART"] ? "-d --restart=unless-stopped" : "-it --rm"

system(<<-bash)
#{$command} run                             \
  #{$restart}                               \
  --name home-library                       \
  -v ./:/app/                               \
  -p #{$port}:3000                          \
  -e ENVIRONMENT=production                 \
    home-library:latest #{ARGV.join(" ")}
bash
