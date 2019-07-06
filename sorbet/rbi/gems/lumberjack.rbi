# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/lumberjack/all/lumberjack.rbi
#
# lumberjack-1.0.13
module Lumberjack
  def self.unit_of_work(id = nil); end
  def self.unit_of_work_id; end
end
module Lumberjack::Severity
  def self.label_to_level(label); end
  def self.level_to_label(severity); end
end
class Lumberjack::LogEntry
  def initialize(time, severity, message, progname, pid, unit_of_work_id); end
  def inspect; end
  def message; end
  def message=(arg0); end
  def pid; end
  def pid=(arg0); end
  def progname; end
  def progname=(arg0); end
  def severity; end
  def severity=(arg0); end
  def severity_label; end
  def time; end
  def time=(arg0); end
  def to_s; end
  def unit_of_work_id; end
  def unit_of_work_id=(arg0); end
end
class Lumberjack::Formatter
  def add(klass, formatter = nil, &block); end
  def call(severity, timestamp, progname, msg); end
  def format(message); end
  def formatter_for(klass); end
  def initialize; end
  def remove(klass); end
end
class Lumberjack::Formatter::ExceptionFormatter
  def call(exception); end
end
class Lumberjack::Formatter::InspectFormatter
  def call(obj); end
end
class Lumberjack::Formatter::PrettyPrintFormatter
  def call(obj); end
  def initialize(width = nil); end
  def width; end
  def width=(arg0); end
end
class Lumberjack::Formatter::StringFormatter
  def call(obj); end
end
class Lumberjack::Device
  def cleanup_files!; end
  def close; end
  def do_once(file); end
  def flush; end
  def write(entry); end
end
class Lumberjack::Device::Writer < Lumberjack::Device
  def before_flush; end
  def buffer_size; end
  def buffer_size=(value); end
  def close; end
  def flush; end
  def initialize(stream, options = nil); end
  def stream; end
  def stream=(stream); end
  def write(entry); end
end
class Lumberjack::Device::Writer::Buffer
  def <<(string); end
  def clear; end
  def empty?; end
  def initialize; end
  def pop!; end
  def size; end
end
class Lumberjack::Device::LogFile < Lumberjack::Device::Writer
  def initialize(path, options = nil); end
  def path; end
end
class Lumberjack::Device::RollingLogFile < Lumberjack::Device::LogFile
  def after_roll; end
  def archive_file_suffix; end
  def before_flush; end
  def initialize(path, options = nil); end
  def keep; end
  def keep=(arg0); end
  def path; end
  def reopen_file; end
  def roll_file!; end
  def roll_file?; end
end
class Lumberjack::Device::DateRollingLogFile < Lumberjack::Device::RollingLogFile
  def after_roll; end
  def archive_file_suffix; end
  def initialize(path, options = nil); end
  def roll_file?; end
end
class Lumberjack::Device::SizeRollingLogFile < Lumberjack::Device::RollingLogFile
  def archive_file_suffix; end
  def initialize(path, options = nil); end
  def max_size; end
  def next_archive_number; end
  def roll_file?; end
end
class Lumberjack::Device::Null < Lumberjack::Device
  def initialize(*args); end
  def write(entry); end
end
class Lumberjack::Logger
  def <<(message = nil, progname = nil, &block); end
  def add(severity, message = nil, progname = nil); end
  def close; end
  def create_flusher_thread(flush_seconds); end
  def debug(message = nil, progname = nil, &block); end
  def debug?; end
  def device; end
  def error(message = nil, progname = nil, &block); end
  def error?; end
  def fatal(message = nil, progname = nil, &block); end
  def fatal?; end
  def flush; end
  def formatter; end
  def info(message = nil, progname = nil, &block); end
  def info?; end
  def initialize(device = nil, options = nil); end
  def last_flushed_at; end
  def level; end
  def level=(severity); end
  def log(severity, message = nil, progname = nil); end
  def open_device(device, options); end
  def progname; end
  def progname=(arg0); end
  def push_thread_local_value(name, value); end
  def set_progname(value, &block); end
  def set_thread_local_value(name, value); end
  def silence(temporary_level = nil, &block); end
  def silencer; end
  def silencer=(arg0); end
  def thread_local_value(name); end
  def unknown(message = nil, progname = nil, &block); end
  def warn(message = nil, progname = nil, &block); end
  def warn?; end
  include Lumberjack::Severity
end
class Lumberjack::Template
  def call(entry); end
  def compile(template); end
  def format_time(time); end
  def initialize(first_line, options = nil); end
end
module Lumberjack::Rack
end
class Lumberjack::Rack::UnitOfWork
  def call(env); end
  def initialize(app); end
end
class Lumberjack::Rack::RequestId
  def call(env); end
  def initialize(app, abbreviated = nil); end
end
