# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/puma/all/puma.rbi
#
# puma-5.6.5

class Puma::HttpParser
  def body; end
  def error?; end
  def execute(arg0, arg1, arg2); end
  def finish; end
  def finished?; end
  def initialize; end
  def nread; end
  def reset; end
end
class Puma::MiniSSL::SSLContext
  def initialize(arg0); end
end
module Puma::MiniSSL
  def self.check; end
end
class Puma::MiniSSL::Engine
  def extract; end
  def init?; end
  def inject(arg0); end
  def peercert; end
  def read; end
  def self.client; end
  def self.server(arg0); end
  def shutdown; end
  def ssl_vers_st; end
  def write(arg0); end
end
module Puma
  def self.abstract_unix_socket?; end
  def self.forkable?; end
  def self.jruby?; end
  def self.mri?; end
  def self.osx?; end
  def self.set_thread_name(name); end
  def self.ssl?; end
  def self.stats; end
  def self.stats_hash; end
  def self.stats_object=(val); end
  def self.windows?; end
end
module Puma::JSONSerialization
  def self.generate(value); end
  def self.serialize_object_key(output, value); end
  def self.serialize_string(output, value); end
  def self.serialize_value(output, value); end
end
class Puma::JSONSerialization::SerializationError < StandardError
end
class Puma::MiniSSL::Socket
  def <<(data); end
  def bad_tlsv1_3?; end
  def close; end
  def closed?; end
  def engine_read_all; end
  def flush; end
  def initialize(socket, engine); end
  def peeraddr; end
  def peercert; end
  def read_nonblock(size, *_); end
  def readpartial(size); end
  def ssl_version_state; end
  def syswrite(data); end
  def to_io; end
  def write(data); end
  def write_nonblock(data, *_); end
end
class Puma::MiniSSL::Context
  def ca; end
  def ca=(ca); end
  def cert; end
  def cert=(cert); end
  def cert_pem; end
  def cert_pem=(cert_pem); end
  def check; end
  def check_file(file, desc); end
  def initialize; end
  def key; end
  def key=(key); end
  def key_pem; end
  def key_pem=(key_pem); end
  def no_tlsv1; end
  def no_tlsv1=(tlsv1); end
  def no_tlsv1_1; end
  def no_tlsv1_1=(tlsv1_1); end
  def ssl_cipher_filter; end
  def ssl_cipher_filter=(arg0); end
  def verification_flags; end
  def verification_flags=(arg0); end
  def verify_mode; end
  def verify_mode=(arg0); end
end
class Puma::MiniSSL::Server
  def accept; end
  def accept_nonblock; end
  def addr; end
  def close; end
  def closed?; end
  def initialize(socket, ctx); end
  def to_io; end
end
module Puma::Rack
end
class Puma::Rack::Options
end
class Puma::Rack::Builder
end
class Puma::UnknownPlugin < RuntimeError
end
class Puma::PluginLoader
end
class Puma::PluginRegistry
end
class Puma::Plugin
end
class Puma::UnsupportedOption < RuntimeError
end
module Puma::Const
end
module Puma::Util
end
class Puma::Util::HeaderHash < Hash
end
class Puma::DSL
  include Puma::ConfigDefault
end
module Puma::ConfigDefault
end
class Puma::UserFileDefaultOptions
end
class Puma::Configuration
  include Puma::ConfigDefault
end
class Puma::Configuration::ConfigMiddleware
end
class Puma::NullIO
end
class Puma::ErrorLogger
  include Puma::Const
end
class Puma::Events
end
class Puma::Events::DefaultFormatter
end
class Puma::Events::PidFormatter
end
class Puma::ThreadPool
end
class Puma::ThreadPool::ForceShutdown < RuntimeError
end
class Puma::ThreadPool::Automaton
end
class Puma::UnsupportedBackend < StandardError
end
class Puma::Reactor
end
class IO
end
module IO::WaitReadable
end
class Puma::ConnectionError < RuntimeError
end
class Puma::HttpParserError501 < IOError
end
class Puma::Client
  extend Forwardable
  include Puma::Const
end
class Puma::MiniSSL::ContextBuilder
end
class Puma::Binder
  include Puma::Const
end
class Puma::IOBuffer < String
end
module Puma::Request
  include Puma::Const
end
class Puma::Server
  extend Forwardable
  include Puma::Const
  include Puma::Request
end
class Puma::Runner
end
class Puma::Cluster < Puma::Runner
end
class Puma::Cluster::WorkerHandle
end
class Puma::Cluster::Worker < Puma::Runner
end
class Puma::Single < Puma::Runner
end
class Puma::Launcher
end
