# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `puma` gem.
# Please instead update this file by running `bin/tapioca gem puma`.

module Puma
  class << self
    def abstract_unix_socket?; end
    def forkable?; end
    def jruby?; end
    def mri?; end
    def osx?; end
    def set_thread_name(name); end
    def ssl?; end
    def stats; end
    def stats_hash; end
    def stats_object=(val); end
    def windows?; end
  end
end

class Puma::Binder
  include ::Puma::Const

  def initialize(events, conf = T.unsafe(nil)); end

  def activated_sockets; end
  def add_ssl_listener(host, port, ctx, optimize_for_latency = T.unsafe(nil), backlog = T.unsafe(nil)); end
  def add_tcp_listener(host, port, optimize_for_latency = T.unsafe(nil), backlog = T.unsafe(nil)); end
  def add_unix_listener(path, umask = T.unsafe(nil), mode = T.unsafe(nil), backlog = T.unsafe(nil)); end
  def close; end
  def close_listeners; end
  def connected_ports; end
  def create_activated_fds(env_hash); end
  def create_inherited_fds(env_hash); end
  def env(sock); end
  def envs; end
  def inherit_ssl_listener(fd, ctx); end
  def inherit_tcp_listener(host, port, fd); end
  def inherit_unix_listener(path, fd); end
  def inherited_fds; end
  def ios; end
  def ios=(_arg0); end
  def listeners; end
  def listeners=(_arg0); end
  def localhost_authority; end
  def localhost_authority_context; end
  def parse(binds, logger, log_msg = T.unsafe(nil)); end
  def proto_env; end
  def redirects_for_restart; end
  def redirects_for_restart_env; end
  def synthesize_binds_from_activated_fs(binds, only_matching); end
  def unix_paths; end

  private

  def loc_addr_str(io); end
  def loopback_addresses; end
  def socket_activation_fd(int); end
end

Puma::Binder::RACK_VERSION = T.let(T.unsafe(nil), Array)

class Puma::Client
  include ::Puma::Const
  extend ::Forwardable

  def initialize(io, env = T.unsafe(nil)); end

  def body; end
  def call; end
  def can_close?; end
  def close; end
  def closed?(*args, **_arg1, &block); end
  def eagerly_finish; end
  def env; end
  def expect_proxy_proto=(val); end
  def finish(timeout); end
  def hijacked; end
  def in_data_phase; end
  def inspect; end
  def io; end
  def io_ok?; end
  def listener; end
  def listener=(_arg0); end
  def peerip; end
  def peerip=(_arg0); end
  def ready; end
  def remote_addr_header; end
  def remote_addr_header=(_arg0); end
  def reset(fast_check = T.unsafe(nil)); end
  def set_timeout(val); end
  def tempfile; end
  def timeout; end
  def timeout!; end
  def timeout_at; end
  def to_io; end
  def try_to_finish; end
  def try_to_parse_proxy_protocol; end
  def write_error(status_code); end

  private

  def decode_chunk(chunk); end
  def read_body; end
  def read_chunked_body; end
  def set_ready; end
  def setup_body; end
  def setup_chunked_body(body); end
  def write_chunk(str); end
end

Puma::Client::ALLOWED_TRANSFER_ENCODING = T.let(T.unsafe(nil), Array)
Puma::Client::CHUNK_SIZE_INVALID = T.let(T.unsafe(nil), Regexp)
Puma::Client::CHUNK_VALID_ENDING = T.let(T.unsafe(nil), String)
Puma::Client::CONTENT_LENGTH_VALUE_INVALID = T.let(T.unsafe(nil), Regexp)
Puma::Client::EmptyBody = T.let(T.unsafe(nil), Puma::NullIO)
Puma::Client::TE_ERR_MSG = T.let(T.unsafe(nil), String)

class Puma::Cluster < ::Puma::Runner
  def initialize(cli, events); end

  def all_workers_booted?; end
  def check_workers; end
  def cull_start_index(diff); end
  def cull_workers; end
  def fork_worker!; end
  def halt; end
  def next_worker_index; end
  def phased_restart; end
  def preload?; end
  def redirect_io; end
  def reload_worker_directory; end
  def restart; end
  def run; end
  def setup_signals; end
  def spawn_worker(idx, master); end
  def spawn_workers; end
  def start_phased_restart; end
  def stats; end
  def stop; end
  def stop_blocked; end
  def stop_workers; end
  def worker(index, master); end
  def workers_to_cull(diff); end

  private

  def single_worker_warning; end
  def timeout_workers; end
  def wait_workers; end
end

class Puma::Cluster::Worker < ::Puma::Runner
  def initialize(index:, master:, launcher:, pipes:, server: T.unsafe(nil)); end

  def index; end
  def master; end
  def run; end

  private

  def spawn_worker(idx); end
end

class Puma::Cluster::WorkerHandle
  def initialize(idx, pid, phase, options); end

  def boot!; end
  def booted?; end
  def hup; end
  def index; end
  def kill; end
  def last_checkin; end
  def last_status; end
  def phase; end
  def phase=(_arg0); end
  def pid; end
  def pid=(_arg0); end
  def ping!(status); end
  def ping_timeout; end
  def signal; end
  def started_at; end
  def term; end
  def term!; end
  def term?; end
  def uptime; end
end

module Puma::ConfigDefault; end
Puma::ConfigDefault::DefaultRackup = T.let(T.unsafe(nil), String)
Puma::ConfigDefault::DefaultTCPHost = T.let(T.unsafe(nil), String)
Puma::ConfigDefault::DefaultTCPPort = T.let(T.unsafe(nil), Integer)
Puma::ConfigDefault::DefaultWorkerCheckInterval = T.let(T.unsafe(nil), Integer)
Puma::ConfigDefault::DefaultWorkerShutdownTimeout = T.let(T.unsafe(nil), Integer)
Puma::ConfigDefault::DefaultWorkerTimeout = T.let(T.unsafe(nil), Integer)

class Puma::Configuration
  include ::Puma::ConfigDefault

  def initialize(user_options = T.unsafe(nil), default_options = T.unsafe(nil), &block); end

  def app; end
  def app_configured?; end
  def clamp; end
  def config_files; end
  def configure; end
  def default_max_threads; end
  def environment; end
  def environment_str; end
  def final_options; end
  def flatten; end
  def flatten!; end
  def load; end
  def load_plugin(name); end
  def options; end
  def plugins; end
  def puma_default_options; end
  def rackup; end
  def run_hooks(key, arg, events); end

  private

  def infer_tag; end
  def initialize_copy(other); end
  def load_rackup; end
  def rack_builder; end

  class << self
    def random_token; end
    def temp_path; end
  end
end

class Puma::Configuration::ConfigMiddleware
  def initialize(config, app); end

  def call(env); end
end

class Puma::ConnectionError < ::RuntimeError; end
module Puma::Const; end
Puma::Const::BANNED_HEADER_KEY = T.let(T.unsafe(nil), Regexp)
Puma::Const::CGI_VER = T.let(T.unsafe(nil), String)
Puma::Const::CHUNKED = T.let(T.unsafe(nil), String)
Puma::Const::CHUNK_SIZE = T.let(T.unsafe(nil), Integer)
Puma::Const::CLOSE = T.let(T.unsafe(nil), String)
Puma::Const::CLOSE_CHUNKED = T.let(T.unsafe(nil), String)
Puma::Const::CODE_NAME = T.let(T.unsafe(nil), String)
Puma::Const::COLON = T.let(T.unsafe(nil), String)
Puma::Const::CONNECTION_CLOSE = T.let(T.unsafe(nil), String)
Puma::Const::CONNECTION_KEEP_ALIVE = T.let(T.unsafe(nil), String)
Puma::Const::CONTENT_LENGTH = T.let(T.unsafe(nil), String)
Puma::Const::CONTENT_LENGTH2 = T.let(T.unsafe(nil), String)
Puma::Const::CONTENT_LENGTH_S = T.let(T.unsafe(nil), String)
Puma::Const::CONTINUE = T.let(T.unsafe(nil), String)
Puma::Const::DQUOTE = T.let(T.unsafe(nil), String)
Puma::Const::EARLY_HINTS = T.let(T.unsafe(nil), String)
Puma::Const::ERROR_RESPONSE = T.let(T.unsafe(nil), Hash)
Puma::Const::FAST_TRACK_KA_TIMEOUT = T.let(T.unsafe(nil), Float)
Puma::Const::FIRST_DATA_TIMEOUT = T.let(T.unsafe(nil), Integer)
Puma::Const::GATEWAY_INTERFACE = T.let(T.unsafe(nil), String)
Puma::Const::HALT_COMMAND = T.let(T.unsafe(nil), String)
Puma::Const::HEAD = T.let(T.unsafe(nil), String)
Puma::Const::HIJACK = T.let(T.unsafe(nil), String)
Puma::Const::HIJACK_IO = T.let(T.unsafe(nil), String)
Puma::Const::HIJACK_P = T.let(T.unsafe(nil), String)
Puma::Const::HTTP = T.let(T.unsafe(nil), String)
Puma::Const::HTTPS = T.let(T.unsafe(nil), String)
Puma::Const::HTTPS_KEY = T.let(T.unsafe(nil), String)
Puma::Const::HTTP_10_200 = T.let(T.unsafe(nil), String)
Puma::Const::HTTP_11 = T.let(T.unsafe(nil), String)
Puma::Const::HTTP_11_100 = T.let(T.unsafe(nil), String)
Puma::Const::HTTP_11_200 = T.let(T.unsafe(nil), String)
Puma::Const::HTTP_CONNECTION = T.let(T.unsafe(nil), String)
Puma::Const::HTTP_EXPECT = T.let(T.unsafe(nil), String)
Puma::Const::HTTP_HEADER_DELIMITER = T.let(T.unsafe(nil), String)
Puma::Const::HTTP_HOST = T.let(T.unsafe(nil), String)
Puma::Const::HTTP_VERSION = T.let(T.unsafe(nil), String)
Puma::Const::HTTP_X_FORWARDED_FOR = T.let(T.unsafe(nil), String)
Puma::Const::HTTP_X_FORWARDED_PROTO = T.let(T.unsafe(nil), String)
Puma::Const::HTTP_X_FORWARDED_SCHEME = T.let(T.unsafe(nil), String)
Puma::Const::HTTP_X_FORWARDED_SSL = T.let(T.unsafe(nil), String)
Puma::Const::ILLEGAL_HEADER_KEY_REGEX = T.let(T.unsafe(nil), Regexp)
Puma::Const::ILLEGAL_HEADER_VALUE_REGEX = T.let(T.unsafe(nil), Regexp)
Puma::Const::KEEP_ALIVE = T.let(T.unsafe(nil), String)
Puma::Const::LINE_END = T.let(T.unsafe(nil), String)
Puma::Const::LOCALHOST = T.let(T.unsafe(nil), String)
Puma::Const::LOCALHOST_IP = T.let(T.unsafe(nil), String)
Puma::Const::MAX_BODY = T.let(T.unsafe(nil), Integer)
Puma::Const::MAX_FAST_INLINE = T.let(T.unsafe(nil), Integer)
Puma::Const::MAX_HEADER = T.let(T.unsafe(nil), Integer)
Puma::Const::NEWLINE = T.let(T.unsafe(nil), String)
Puma::Const::PATH_INFO = T.let(T.unsafe(nil), String)
Puma::Const::PERSISTENT_TIMEOUT = T.let(T.unsafe(nil), Integer)
Puma::Const::PORT_443 = T.let(T.unsafe(nil), String)
Puma::Const::PORT_80 = T.let(T.unsafe(nil), String)
Puma::Const::PROXY_PROTOCOL_V1_REGEX = T.let(T.unsafe(nil), Regexp)
Puma::Const::PUMA_CONFIG = T.let(T.unsafe(nil), String)
Puma::Const::PUMA_PEERCERT = T.let(T.unsafe(nil), String)
Puma::Const::PUMA_SERVER_STRING = T.let(T.unsafe(nil), String)
Puma::Const::PUMA_SOCKET = T.let(T.unsafe(nil), String)
Puma::Const::PUMA_TMP_BASE = T.let(T.unsafe(nil), String)
Puma::Const::PUMA_VERSION = T.let(T.unsafe(nil), String)
Puma::Const::QUERY_STRING = T.let(T.unsafe(nil), String)
Puma::Const::RACK_AFTER_REPLY = T.let(T.unsafe(nil), String)
Puma::Const::RACK_INPUT = T.let(T.unsafe(nil), String)
Puma::Const::RACK_URL_SCHEME = T.let(T.unsafe(nil), String)
Puma::Const::REMOTE_ADDR = T.let(T.unsafe(nil), String)
Puma::Const::REQUEST_METHOD = T.let(T.unsafe(nil), String)
Puma::Const::REQUEST_PATH = T.let(T.unsafe(nil), String)
Puma::Const::REQUEST_URI = T.let(T.unsafe(nil), String)
Puma::Const::RESTART_COMMAND = T.let(T.unsafe(nil), String)
Puma::Const::SERVER_NAME = T.let(T.unsafe(nil), String)
Puma::Const::SERVER_PORT = T.let(T.unsafe(nil), String)
Puma::Const::SERVER_PROTOCOL = T.let(T.unsafe(nil), String)
Puma::Const::SERVER_SOFTWARE = T.let(T.unsafe(nil), String)
Puma::Const::STOP_COMMAND = T.let(T.unsafe(nil), String)
Puma::Const::TRANSFER_ENCODING = T.let(T.unsafe(nil), String)
Puma::Const::TRANSFER_ENCODING2 = T.let(T.unsafe(nil), String)
Puma::Const::TRANSFER_ENCODING_CHUNKED = T.let(T.unsafe(nil), String)
Puma::Const::VERSION = T.let(T.unsafe(nil), String)
Puma::Const::WRITE_TIMEOUT = T.let(T.unsafe(nil), Integer)

class Puma::DSL
  include ::Puma::ConfigDefault

  def initialize(options, config); end

  def _load_from(path); end
  def _offer_plugins; end
  def activate_control_app(url = T.unsafe(nil), opts = T.unsafe(nil)); end
  def after_worker_boot(&block); end
  def after_worker_fork(&block); end
  def app(obj = T.unsafe(nil), &block); end
  def before_fork(&block); end
  def bind(url); end
  def bind_to_activated_sockets(bind = T.unsafe(nil)); end
  def clean_thread_locals(which = T.unsafe(nil)); end
  def clear_binds!; end
  def debug; end
  def default_host; end
  def directory(dir); end
  def drain_on_shutdown(which = T.unsafe(nil)); end
  def early_hints(answer = T.unsafe(nil)); end
  def environment(environment); end
  def extra_runtime_dependencies(answer = T.unsafe(nil)); end
  def first_data_timeout(seconds); end
  def force_shutdown_after(val = T.unsafe(nil)); end
  def fork_worker(after_requests = T.unsafe(nil)); end
  def get(key, default = T.unsafe(nil)); end
  def inject(&blk); end
  def io_selector_backend(backend); end
  def load(file); end
  def log_formatter(&block); end
  def log_requests(which = T.unsafe(nil)); end
  def lowlevel_error_handler(obj = T.unsafe(nil), &block); end
  def max_fast_inline(num_of_requests); end
  def mutate_stdout_and_stderr_to_sync_on_write(enabled = T.unsafe(nil)); end
  def nakayoshi_fork(enabled = T.unsafe(nil)); end
  def on_refork(&block); end
  def on_restart(&block); end
  def on_worker_boot(&block); end
  def on_worker_fork(&block); end
  def on_worker_shutdown(&block); end
  def out_of_band(&block); end
  def persistent_timeout(seconds); end
  def pidfile(path); end
  def plugin(name); end
  def port(port, host = T.unsafe(nil)); end
  def preload_app!(answer = T.unsafe(nil)); end
  def prune_bundler(answer = T.unsafe(nil)); end
  def queue_requests(answer = T.unsafe(nil)); end
  def quiet(which = T.unsafe(nil)); end
  def rack_url_scheme(scheme = T.unsafe(nil)); end
  def rackup(path); end
  def raise_exception_on_sigterm(answer = T.unsafe(nil)); end
  def restart_command(cmd); end
  def set_default_host(host); end
  def set_remote_address(val = T.unsafe(nil)); end
  def shutdown_debug(val = T.unsafe(nil)); end
  def silence_single_worker_warning; end
  def ssl_bind(host, port, opts = T.unsafe(nil)); end
  def state_path(path); end
  def state_permission(permission); end
  def stdout_redirect(stdout = T.unsafe(nil), stderr = T.unsafe(nil), append = T.unsafe(nil)); end
  def tag(string); end
  def threads(min, max); end
  def wait_for_less_busy_worker(val = T.unsafe(nil)); end
  def worker_boot_timeout(timeout); end
  def worker_check_interval(interval); end
  def worker_culling_strategy(strategy); end
  def worker_shutdown_timeout(timeout); end
  def worker_timeout(timeout); end
  def workers(count); end

  private

  def add_pem_values_to_options_store(opts); end

  class << self
    def ssl_bind_str(host, port, opts); end
  end
end

class Puma::ErrorLogger
  include ::Puma::Const

  def initialize(ioerr); end

  def debug(options = T.unsafe(nil)); end
  def info(options = T.unsafe(nil)); end
  def ioerr; end
  def request_dump(req); end
  def request_headers(req); end
  def request_parsed?(req); end
  def request_title(req); end
  def title(options = T.unsafe(nil)); end

  private

  def log(str); end

  class << self
    def stdio; end
  end
end

Puma::ErrorLogger::REQUEST_FORMAT = T.let(T.unsafe(nil), String)

class Puma::Events
  def initialize(stdout, stderr); end

  def connection_error(error, req, text = T.unsafe(nil)); end
  def debug(str); end
  def debug_error(error, req = T.unsafe(nil), text = T.unsafe(nil)); end
  def error(str); end
  def fire(hook, *args); end
  def fire_on_booted!; end
  def fire_on_restart!; end
  def fire_on_stopped!; end
  def format(str); end
  def formatter; end
  def formatter=(_arg0); end
  def log(str); end
  def on_booted(&block); end
  def on_restart(&block); end
  def on_stopped(&block); end
  def parse_error(error, req); end
  def register(hook, obj = T.unsafe(nil), &blk); end
  def ssl_error(error, ssl_socket); end
  def stderr; end
  def stdout; end
  def unknown_error(error, req = T.unsafe(nil), text = T.unsafe(nil)); end
  def write(str); end

  class << self
    def null; end
    def stdio; end
    def strings; end
  end
end

Puma::Events::DEFAULT = T.let(T.unsafe(nil), Puma::Events)

class Puma::Events::DefaultFormatter
  def call(str); end
end

class Puma::Events::PidFormatter
  def call(str); end
end

Puma::HAS_FORK = T.let(T.unsafe(nil), TrueClass)
Puma::HAS_SSL = T.let(T.unsafe(nil), TrueClass)
Puma::HAS_UNIX_SOCKET = T.let(T.unsafe(nil), TrueClass)
Puma::HTTP_STATUS_CODES = T.let(T.unsafe(nil), Hash)

class Puma::HttpParser
  def initialize; end

  def body; end
  def error?; end
  def execute(_arg0, _arg1, _arg2); end
  def finish; end
  def finished?; end
  def nread; end
  def reset; end
end

class Puma::HttpParserError < ::IOError; end
class Puma::HttpParserError501 < ::IOError; end

class Puma::IOBuffer < ::String
  def append(*args); end
  def reset; end
end

Puma::IS_MRI = T.let(T.unsafe(nil), TrueClass)
Puma::IS_OSX = T.let(T.unsafe(nil), TrueClass)

module Puma::JSONSerialization
  class << self
    def generate(value); end

    private

    def serialize_object_key(output, value); end
    def serialize_string(output, value); end
    def serialize_value(output, value); end
  end
end

Puma::JSONSerialization::BACKSLASH = T.let(T.unsafe(nil), Regexp)
Puma::JSONSerialization::CHAR_TO_ESCAPE = T.let(T.unsafe(nil), Regexp)
Puma::JSONSerialization::CONTROL_CHAR_TO_ESCAPE = T.let(T.unsafe(nil), Regexp)
Puma::JSONSerialization::QUOTE = T.let(T.unsafe(nil), Regexp)
class Puma::JSONSerialization::SerializationError < ::StandardError; end

class Puma::Launcher
  def initialize(conf, launcher_args = T.unsafe(nil)); end

  def binder; end
  def close_binder_listeners; end
  def config; end
  def connected_ports; end
  def delete_pidfile; end
  def events; end
  def halt; end
  def options; end
  def phased_restart; end
  def refork; end
  def restart; end
  def restart_args; end
  def restart_dir; end
  def run; end
  def stats; end
  def stop; end
  def thread_status; end
  def write_state; end

  private

  def clustered?; end
  def environment; end
  def extra_runtime_deps_directories; end
  def files_to_require_after_prune; end
  def generate_restart_data; end
  def graceful_stop; end
  def integrate_with_systemd; end
  def log(str); end
  def log_config; end
  def prune_bundler; end
  def prune_bundler?; end
  def puma_wild_location; end
  def reload_worker_directory; end
  def require_paths_for_gem(gem_spec); end
  def require_rubygems_min_version!(min_version, feature); end
  def restart!; end
  def set_process_title; end
  def set_rack_environment; end
  def setup_signals; end
  def spec_for_gem(gem_name); end
  def title; end
  def unsupported(str); end
  def with_unbundled_env; end
  def write_pid; end
end

Puma::Launcher::KEYS_NOT_TO_PERSIST_IN_STATE = T.let(T.unsafe(nil), Array)

module Puma::MiniSSL
  class << self
    def check; end
  end
end

class Puma::MiniSSL::Context
  def initialize; end

  def ca; end
  def ca=(ca); end
  def cert; end
  def cert=(cert); end
  def cert_pem; end
  def cert_pem=(cert_pem); end
  def check; end
  def check_file(file, desc); end
  def key; end
  def key=(key); end
  def key_pem; end
  def key_pem=(key_pem); end
  def no_tlsv1; end
  def no_tlsv1=(tlsv1); end
  def no_tlsv1_1; end
  def no_tlsv1_1=(tlsv1_1); end
  def ssl_cipher_filter; end
  def ssl_cipher_filter=(_arg0); end
  def verification_flags; end
  def verification_flags=(_arg0); end
  def verify_mode; end
  def verify_mode=(_arg0); end
end

class Puma::MiniSSL::ContextBuilder
  def initialize(params, events); end

  def context; end

  private

  def events; end
  def params; end
end

class Puma::MiniSSL::Engine
  def extract; end
  def init?; end
  def inject(_arg0); end
  def peercert; end
  def read; end
  def shutdown; end
  def ssl_vers_st; end
  def write(_arg0); end

  class << self
    def client; end
    def server(_arg0); end
  end
end

Puma::MiniSSL::HAS_TLS1_3 = T.let(T.unsafe(nil), TrueClass)
Puma::MiniSSL::OPENSSL_LIBRARY_VERSION = T.let(T.unsafe(nil), String)
Puma::MiniSSL::OPENSSL_NO_SSL3 = T.let(T.unsafe(nil), TrueClass)
Puma::MiniSSL::OPENSSL_VERSION = T.let(T.unsafe(nil), String)

class Puma::MiniSSL::SSLContext
  def initialize(_arg0); end
end

class Puma::MiniSSL::SSLError < ::StandardError; end

class Puma::MiniSSL::Server
  def initialize(socket, ctx); end

  def accept; end
  def accept_nonblock; end
  def addr; end
  def close; end
  def closed?; end
  def to_io; end
end

class Puma::MiniSSL::Socket
  def initialize(socket, engine); end

  def <<(data); end
  def close; end
  def closed?; end
  def engine_read_all; end
  def flush; end
  def peeraddr; end
  def peercert; end
  def read_nonblock(size, *_); end
  def readpartial(size); end
  def ssl_version_state; end
  def syswrite(data); end
  def to_io; end
  def write(data); end
  def write_nonblock(data, *_); end

  private

  def bad_tlsv1_3?; end
end

Puma::MiniSSL::VERIFICATION_FLAGS = T.let(T.unsafe(nil), Hash)
Puma::MiniSSL::VERIFY_FAIL_IF_NO_PEER_CERT = T.let(T.unsafe(nil), Integer)
Puma::MiniSSL::VERIFY_NONE = T.let(T.unsafe(nil), Integer)
Puma::MiniSSL::VERIFY_PEER = T.let(T.unsafe(nil), Integer)

class Puma::NullIO
  def close; end
  def closed?; end
  def each; end
  def eof?; end
  def flush; end
  def gets; end
  def puts(*ary); end
  def read(count = T.unsafe(nil), _buffer = T.unsafe(nil)); end
  def rewind; end
  def size; end
  def string; end
  def sync; end
  def sync=(v); end
  def write(*ary); end
end

class Puma::Plugin
  def in_background(&blk); end

  class << self
    def create(&blk); end
    def extract_name(ary); end
  end
end

Puma::Plugin::CALLER_FILE = T.let(T.unsafe(nil), Regexp)

class Puma::PluginLoader
  def initialize; end

  def create(name); end
  def fire_starts(launcher); end
end

class Puma::PluginRegistry
  def initialize; end

  def add_background(blk); end
  def find(name); end
  def fire_background; end
  def register(name, cls); end
end

Puma::Plugins = T.let(T.unsafe(nil), Puma::PluginRegistry)
module Puma::Rack; end

class Puma::Rack::Builder
  def initialize(default_app = T.unsafe(nil), &block); end

  def call(env); end
  def map(path, &block); end
  def run(app); end
  def to_app; end
  def use(middleware, *args, &block); end
  def warmup(prc = T.unsafe(nil), &block); end

  private

  def generate_map(default_app, mapping); end

  class << self
    def app(default_app = T.unsafe(nil), &block); end
    def new_from_string(builder_script, file = T.unsafe(nil)); end
    def parse_file(config, opts = T.unsafe(nil)); end
  end
end

class Puma::Rack::Options
  def handler_opts(options); end
  def parse!(args); end
end

class Puma::Reactor
  def initialize(backend, &block); end

  def add(client); end
  def run(background = T.unsafe(nil)); end
  def shutdown; end

  private

  def register(client); end
  def select_loop; end
  def wakeup!(client); end
end

module Puma::Request
  include ::Puma::Const

  def default_server_port(env); end
  def handle_request(client, lines, requests); end
  def normalize_env(env, client); end

  private

  def fast_write(io, str); end
  def fetch_status_code(status); end
  def illegal_header_key?(header_key); end
  def illegal_header_value?(header_value); end
  def req_env_post_parse(env); end
  def str_early_hints(headers); end
  def str_headers(env, status, headers, res_info, lines, requests, client); end
end

class Puma::Runner
  def initialize(cli, events); end

  def app; end
  def close_control_listeners; end
  def debug(str); end
  def development?; end
  def error(str); end
  def load_and_bind; end
  def log(str); end
  def output_header(mode); end
  def redirect_io; end
  def redirected_io?; end
  def ruby_engine; end
  def start_control; end
  def start_server; end
  def stop_control; end
  def test?; end
  def wakeup!; end

  private

  def ensure_output_directory_exists(path, io_name); end
end

Puma::STATUS_WITH_NO_ENTITY_BODY = T.let(T.unsafe(nil), Hash)

class Puma::Server
  include ::Puma::Const
  include ::Puma::Request
  extend ::Forwardable

  def initialize(app, events = T.unsafe(nil), options = T.unsafe(nil)); end

  def add_ssl_listener(*args, **_arg1, &block); end
  def add_tcp_listener(*args, **_arg1, &block); end
  def add_unix_listener(*args, **_arg1, &block); end
  def app; end
  def app=(_arg0); end
  def auto_trim_time; end
  def auto_trim_time=(_arg0); end
  def backlog; end
  def begin_restart(sync = T.unsafe(nil)); end
  def binder; end
  def binder=(_arg0); end
  def client_error(e, client); end
  def closed_socket?(socket); end
  def connected_ports(*args, **_arg1, &block); end
  def cork_socket(socket); end
  def early_hints; end
  def early_hints=(_arg0); end
  def events; end
  def first_data_timeout; end
  def first_data_timeout=(_arg0); end
  def graceful_shutdown; end
  def halt(sync = T.unsafe(nil)); end
  def handle_check; end
  def handle_servers; end
  def inherit_binder(bind); end
  def leak_stack_on_error; end
  def leak_stack_on_error=(_arg0); end
  def log_writer; end
  def lowlevel_error(e, env, status = T.unsafe(nil)); end
  def max_threads; end
  def max_threads=(_arg0); end
  def min_threads; end
  def min_threads=(_arg0); end
  def persistent_timeout; end
  def persistent_timeout=(_arg0); end
  def pool_capacity; end
  def process_client(client, buffer); end
  def reactor_wakeup(client); end
  def reaping_time; end
  def reaping_time=(_arg0); end
  def requests_count; end
  def run(background = T.unsafe(nil), thread_name: T.unsafe(nil)); end
  def running; end
  def shutting_down?; end
  def stats; end
  def stop(sync = T.unsafe(nil)); end
  def thread; end
  def uncork_socket(socket); end
  def with_force_shutdown(client, &block); end

  private

  def notify_safely(message); end

  class << self
    def current; end

    private

    def closed_socket_supported?; end
    def tcp_cork_supported?; end
  end
end

Puma::Server::STAT_METHODS = T.let(T.unsafe(nil), Array)
Puma::Server::ThreadLocalKey = T.let(T.unsafe(nil), Symbol)

class Puma::Single < ::Puma::Runner
  def halt; end
  def restart; end
  def run; end
  def stats; end
  def stop; end
  def stop_blocked; end
end

class Puma::ThreadPool
  def initialize(name, min, max, *extra, &block); end

  def <<(work); end
  def auto_reap!(timeout = T.unsafe(nil)); end
  def auto_trim!(timeout = T.unsafe(nil)); end
  def backlog; end
  def busy_threads; end
  def clean_thread_locals; end
  def clean_thread_locals=(_arg0); end
  def out_of_band_hook; end
  def out_of_band_hook=(_arg0); end
  def pool_capacity; end
  def reap; end
  def shutdown(timeout = T.unsafe(nil)); end
  def spawned; end
  def trim(force = T.unsafe(nil)); end
  def trim_requested; end
  def wait_for_less_busy_worker(delay_s); end
  def wait_until_not_full; end
  def waiting; end
  def with_force_shutdown; end
  def with_mutex(&block); end

  private

  def spawn_thread; end
  def trigger_out_of_band_hook; end

  class << self
    def clean_thread_locals; end
  end
end

class Puma::ThreadPool::Automaton
  def initialize(pool, timeout, thread_name, message); end

  def start!; end
  def stop; end
end

class Puma::ThreadPool::ForceShutdown < ::RuntimeError; end
Puma::ThreadPool::SHUTDOWN_GRACE_TIME = T.let(T.unsafe(nil), Integer)
class Puma::UnknownPlugin < ::RuntimeError; end
class Puma::UnsupportedBackend < ::StandardError; end
class Puma::UnsupportedOption < ::RuntimeError; end

class Puma::UserFileDefaultOptions
  def initialize(user_options, default_options); end

  def [](key); end
  def []=(key, value); end
  def all_of(key); end
  def default_options; end
  def fetch(key, default_value = T.unsafe(nil)); end
  def file_options; end
  def final_options; end
  def finalize_values; end
  def user_options; end
end

module Puma::Util
  private

  def escape(s, encoding = T.unsafe(nil)); end
  def nakayoshi_gc(events); end
  def parse_query(qs, d = T.unsafe(nil), &unescaper); end
  def pipe; end
  def purge_interrupt_queue; end
  def unescape(s, encoding = T.unsafe(nil)); end

  class << self
    def escape(s, encoding = T.unsafe(nil)); end
    def nakayoshi_gc(events); end
    def parse_query(qs, d = T.unsafe(nil), &unescaper); end
    def pipe; end
    def purge_interrupt_queue; end
    def unescape(s, encoding = T.unsafe(nil)); end
  end
end

Puma::Util::DEFAULT_SEP = T.let(T.unsafe(nil), Regexp)

class Puma::Util::HeaderHash < ::Hash
  def initialize(hash = T.unsafe(nil)); end

  def [](k); end
  def []=(k, v); end
  def delete(k); end
  def each; end
  def has_key?(k); end
  def include?(k); end
  def key?(k); end
  def member?(k); end
  def merge(other); end
  def merge!(other); end
  def replace(other); end
  def to_hash; end

  class << self
    def new(hash = T.unsafe(nil)); end
  end
end