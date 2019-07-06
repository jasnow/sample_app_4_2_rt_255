# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/minitest/all/minitest.rbi
#
# minitest-5.11.3
module Minitest
  def self.__run(reporter, options); end
  def self.after_run(&block); end
  def self.autorun; end
  def self.backtrace_filter; end
  def self.backtrace_filter=(arg0); end
  def self.clock_time; end
  def self.extensions; end
  def self.extensions=(arg0); end
  def self.filter_backtrace(bt); end
  def self.info_signal; end
  def self.info_signal=(arg0); end
  def self.init_plugins(options); end
  def self.load_plugins; end
  def self.parallel_executor; end
  def self.parallel_executor=(arg0); end
  def self.process_args(args = nil); end
  def self.reporter; end
  def self.reporter=(arg0); end
  def self.run(args = nil); end
  def self.run_one_method(klass, method_name); end
end
module Minitest::Parallel
end
class Minitest::Parallel::Executor
  def <<(work); end
  def initialize(size); end
  def shutdown; end
  def size; end
  def start; end
end
module Minitest::Parallel::Test
  def _synchronize; end
end
module Minitest::Parallel::Test::ClassMethods
  def run_one_method(klass, method_name, reporter); end
  def test_order; end
end
module Minitest::Assertions
  def _synchronize; end
  def assert(test, msg = nil); end
  def assert_empty(obj, msg = nil); end
  def assert_equal(exp, act, msg = nil); end
  def assert_in_delta(exp, act, delta = nil, msg = nil); end
  def assert_in_epsilon(exp, act, epsilon = nil, msg = nil); end
  def assert_includes(collection, obj, msg = nil); end
  def assert_instance_of(cls, obj, msg = nil); end
  def assert_kind_of(cls, obj, msg = nil); end
  def assert_match(matcher, obj, msg = nil); end
  def assert_nil(obj, msg = nil); end
  def assert_operator(o1, op, o2 = nil, msg = nil); end
  def assert_output(stdout = nil, stderr = nil); end
  def assert_predicate(o1, op, msg = nil); end
  def assert_raises(*exp); end
  def assert_respond_to(obj, meth, msg = nil); end
  def assert_same(exp, act, msg = nil); end
  def assert_send(send_ary, m = nil); end
  def assert_silent; end
  def assert_throws(sym, msg = nil); end
  def capture_io; end
  def capture_subprocess_io; end
  def diff(exp, act); end
  def exception_details(e, msg); end
  def flunk(msg = nil); end
  def message(msg = nil, ending = nil, &default); end
  def mu_pp(obj); end
  def mu_pp_for_diff(obj); end
  def pass(_msg = nil); end
  def refute(test, msg = nil); end
  def refute_empty(obj, msg = nil); end
  def refute_equal(exp, act, msg = nil); end
  def refute_in_delta(exp, act, delta = nil, msg = nil); end
  def refute_in_epsilon(a, b, epsilon = nil, msg = nil); end
  def refute_includes(collection, obj, msg = nil); end
  def refute_instance_of(cls, obj, msg = nil); end
  def refute_kind_of(cls, obj, msg = nil); end
  def refute_match(matcher, obj, msg = nil); end
  def refute_nil(obj, msg = nil); end
  def refute_operator(o1, op, o2 = nil, msg = nil); end
  def refute_predicate(o1, op, msg = nil); end
  def refute_respond_to(obj, meth, msg = nil); end
  def refute_same(exp, act, msg = nil); end
  def self.diff; end
  def self.diff=(o); end
  def skip(msg = nil, bt = nil); end
  def skipped?; end
end
class Minitest::Test < Minitest::Runnable
  def capture_exceptions; end
  def class_name; end
  def run(*args); end
  def self.i_suck_and_my_tests_are_order_dependent!; end
  def self.io_lock; end
  def self.io_lock=(arg0); end
  def self.make_my_diffs_pretty!; end
  def self.parallelize_me!; end
  def self.runnable_methods; end
  def self.test_order; end
  def with_info_handler(&block); end
  extend Minitest::Guard
  include Minitest::Assertions
  include Minitest::Guard
  include Minitest::Reportable
  include Minitest::Test::LifecycleHooks
end
module Minitest::Test::LifecycleHooks
  def after_setup; end
  def after_teardown; end
  def before_setup; end
  def before_teardown; end
  def setup; end
  def teardown; end
end
class Minitest::Runnable
  def assertions; end
  def assertions=(arg0); end
  def failure; end
  def failures; end
  def failures=(arg0); end
  def initialize(name); end
  def marshal_dump; end
  def marshal_load(ary); end
  def name; end
  def name=(o); end
  def passed?; end
  def result_code; end
  def run; end
  def self.inherited(klass); end
  def self.methods_matching(re); end
  def self.on_signal(name, action); end
  def self.reset; end
  def self.run(reporter, options = nil); end
  def self.run_one_method(klass, method_name, reporter); end
  def self.runnable_methods; end
  def self.runnables; end
  def self.with_info_handler(reporter, &block); end
  def skipped?; end
  def time; end
  def time=(arg0); end
  def time_it; end
end
module Minitest::Reportable
  def class_name; end
  def error?; end
  def location; end
  def passed?; end
  def result_code; end
  def skipped?; end
end
class Minitest::Result < Minitest::Runnable
  def class_name; end
  def klass; end
  def klass=(arg0); end
  def self.from(runnable); end
  def source_location; end
  def source_location=(arg0); end
  def to_s; end
  include Minitest::Reportable
end
class Minitest::AbstractReporter
  def lock; end
  def locked?; end
  def passed?; end
  def prerecord(klass, name); end
  def record(result); end
  def report; end
  def start; end
  def synchronize(&block); end
  def try_lock; end
  def unlock; end
  include Mutex_m
end
class Minitest::Reporter < Minitest::AbstractReporter
  def initialize(io = nil, options = nil); end
  def io; end
  def io=(arg0); end
  def options; end
  def options=(arg0); end
end
class Minitest::ProgressReporter < Minitest::Reporter
  def prerecord(klass, name); end
  def record(result); end
end
class Minitest::StatisticsReporter < Minitest::Reporter
  def assertions; end
  def assertions=(arg0); end
  def count; end
  def count=(arg0); end
  def errors; end
  def errors=(arg0); end
  def failures; end
  def failures=(arg0); end
  def initialize(io = nil, options = nil); end
  def passed?; end
  def record(result); end
  def report; end
  def results; end
  def results=(arg0); end
  def skips; end
  def skips=(arg0); end
  def start; end
  def start_time; end
  def start_time=(arg0); end
  def total_time; end
  def total_time=(arg0); end
end
class Minitest::SummaryReporter < Minitest::StatisticsReporter
  def aggregated_results(io); end
  def binary_string; end
  def old_sync; end
  def old_sync=(arg0); end
  def report; end
  def start; end
  def statistics; end
  def summary; end
  def sync; end
  def sync=(arg0); end
  def to_s; end
end
class Minitest::CompositeReporter < Minitest::AbstractReporter
  def <<(reporter); end
  def initialize(*reporters); end
  def io; end
  def passed?; end
  def prerecord(klass, name); end
  def record(result); end
  def report; end
  def reporters; end
  def reporters=(arg0); end
  def start; end
end
class Minitest::Assertion < Exception
  def error; end
  def location; end
  def result_code; end
  def result_label; end
end
class Minitest::Skip < Minitest::Assertion
  def result_label; end
end
class Minitest::UnexpectedError < Minitest::Assertion
  def backtrace; end
  def error; end
  def exception; end
  def exception=(arg0); end
  def initialize(exception); end
  def message; end
  def result_label; end
end
module Minitest::Guard
  def jruby?(platform = nil); end
  def maglev?(platform = nil); end
  def mri?(platform = nil); end
  def rubinius?(platform = nil); end
  def windows?(platform = nil); end
end
class Minitest::BacktraceFilter
  def filter(bt); end
end
class Minitest::Unit
  def self.after_tests(&b); end
  def self.autorun; end
end
class Minitest::Unit::TestCase < Minitest::Test
  def self.inherited(klass); end
end
