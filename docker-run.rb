#!/usr/bin/env ruby

$port = ENV["PORT"] || 4080

$command = system("which docker") ? "docker" : "podman"

unless system("#{$command} image ls -a | grep home-library")
  puts "Run build-docker.rb first"
  exit 1
end

$restart = ENV["RESTART"] ? "unless-stopped" : ""
$rm = ENV["RESTART"] ? "" : "--rm"

system(<<-bash)
  #{$command} run -it         \
    #{$restart} #{$rm}        \
    --name home-library       \
    -v ./db/:/app/db/         \
    -v ./config/:/app/config/ \
    -p #{$port}:3000          \
    -e ENVIRONMENT            \
    home-library:latest #{ARGV.join(" ")}
bash
