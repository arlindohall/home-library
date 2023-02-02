# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: false
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/timeout/all/timeout.rbi
#
# timeout-0.3.1

module Timeout
  def self.create_timeout_thread; end
  def self.ensure_timeout_thread_created; end
  def self.timeout(sec, klass = nil, message = nil, &block); end
  def timeout(sec, klass = nil, message = nil, &block); end
end
class Timeout::Error < RuntimeError
  def exception(*arg0); end
  def self.catch(*args); end
  def thread; end
end
class Timeout::Request
  def deadline; end
  def done?; end
  def expired?(now); end
  def finished; end
  def initialize(thread, timeout, exception_class, message); end
  def interrupt; end
end
