# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/minitest-reporters/all/minitest-reporters.rbi
#
# minitest-reporters-1.3.6
module Minitest
end
module Minitest::RelativePosition
  def pad(str, size = nil); end
  def pad_mark(str); end
  def pad_test(str); end
  def print_with_info_padding(line); end
end
class Minitest::ExtensibleBacktraceFilter
  def add_filter(regex); end
  def filter(backtrace); end
  def filters?(str); end
  def initialize; end
  def self.default_filter; end
end
module Minitest::Reporters
  def self.choose_reporters(console_reporters, env); end
  def self.clock_time; end
  def self.minitest_version; end
  def self.reporters; end
  def self.reporters=(arg0); end
  def self.use!(console_reporters = nil, env = nil, backtrace_filter = nil); end
  def self.use_around_test_hooks!; end
  def self.use_old_activesupport_fix!; end
  def self.use_runner!(console_reporters, env); end
end
class Minitest::Reporters::Suite
  def ==(other); end
  def eql?(other); end
  def hash; end
  def initialize(name); end
  def name; end
  def to_s; end
end
class Minitest::Reporters::BaseReporter < Minitest::StatisticsReporter
  def add_defaults(defaults); end
  def after_suite(test); end
  def after_test(_test); end
  def before_suite(test); end
  def before_test(test); end
  def filter_backtrace(backtrace); end
  def initialize(options = nil); end
  def print(*args); end
  def print_colored_status(test); end
  def print_info(e, name = nil); end
  def puts(*args); end
  def record(test); end
  def report; end
  def result(test); end
  def test_class(result); end
  def tests; end
  def tests=(arg0); end
  def total_count; end
  def total_time; end
end
module Minitest::Reporters::ANSI
end
module Minitest::Reporters::ANSI::Code
  def self.color?; end
  extend ANSI::Code
  include ANSI::Code
end
class Minitest::Reporters::ProgressReporter < Minitest::Reporters::BaseReporter
  def color; end
  def color=(color); end
  def initialize(options = nil); end
  def print_test_with_time(test); end
  def record(test); end
  def report; end
  def show; end
  def start; end
  include Minitest::RelativePosition
  include Minitest::Reporters::ANSI::Code
end
