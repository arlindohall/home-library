#!/usr/bin/env ruby

require "pathname"

port = ENV["PORT"] || 8080
dir = ENV["DIR"] || Pathname.new("/home/miller/var/")

def create_db_file
  db_file = dir.join("db.sqlite3")
  FileUtils.touch(db_file)

  db_file.to_s
end

def create_secret_key_base
  key_file = dir.join(".secret_key_base")

  return key_file.read if key_file.exist?

  key_file.write(
    Random.bytes(512).bytes.map { |c| c.to_s(16).rjust(2, "0") }.join
  )

  key_file.read
end

db_file = create_db_file
secret_key_base = create_secret_key_base

system(<<~command)
  docker run --rm \
    -it \
    -p #{port}:3000 \
    -v #{db_file}:/app/db/production.sqlite3 \
    -e SECRET_KEY_BASE=#{secret_key_base} \
    home-library
command
