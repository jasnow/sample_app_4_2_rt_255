# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/railties/all/railties.rbi
#
# railties-4.2.11.1
module Rails
  def self.app_class; end
  def self.app_class=(arg0); end
  def self.application; end
  def self.application=(arg0); end
  def self.backtrace_cleaner; end
  def self.cache; end
  def self.cache=(arg0); end
  def self.configuration; end
  def self.env; end
  def self.env=(environment); end
  def self.gem_version; end
  def self.groups(*groups); end
  def self.initialize!(*args, &block); end
  def self.initialized?(*args, &block); end
  def self.logger; end
  def self.logger=(arg0); end
  def self.public_path; end
  def self.root; end
  def self.version; end
  extend ActiveSupport::Autoload
end
module Rails::Initializable
  def initializers; end
  def run_initializers(group = nil, *args); end
  def self.included(base); end
end
class Rails::Initializable::Initializer
  def after; end
  def before; end
  def belongs_to?(group); end
  def bind(context); end
  def block; end
  def initialize(name, context, options, &block); end
  def name; end
  def run(*args); end
end
class Rails::Initializable::Collection < Array
  def +(other); end
  def tsort_each_child(initializer, &block); end
  def tsort_each_node; end
  include TSort
end
module Rails::Initializable::ClassMethods
  def initializer(name, opts = nil, &blk); end
  def initializers; end
  def initializers_chain; end
  def initializers_for(binding); end
end
module Rails::Paths
end
class Rails::Paths::Root
  def [](path); end
  def []=(path, value); end
  def add(path, options = nil); end
  def all_paths; end
  def autoload_once; end
  def autoload_paths; end
  def eager_load; end
  def filter_by(&block); end
  def initialize(path); end
  def keys; end
  def load_paths; end
  def path; end
  def path=(arg0); end
  def values; end
  def values_at(*list); end
end
class Rails::Paths::Path
  def <<(path); end
  def autoload!; end
  def autoload?; end
  def autoload_once!; end
  def autoload_once?; end
  def children; end
  def concat(paths); end
  def each(&block); end
  def eager_load!; end
  def eager_load?; end
  def existent; end
  def existent_directories; end
  def expanded; end
  def first; end
  def glob; end
  def glob=(arg0); end
  def initialize(root, current, paths, options = nil); end
  def last; end
  def load_path!; end
  def load_path?; end
  def push(path); end
  def skip_autoload!; end
  def skip_autoload_once!; end
  def skip_eager_load!; end
  def skip_load_path!; end
  def to_a; end
  def to_ary; end
  def unshift(*paths); end
  include Enumerable
end
module Rails::Rack
end
module Rails::Configuration
end
class Rails::Configuration::MiddlewareStackProxy
  def delete(*args, &block); end
  def initialize; end
  def insert(*args, &block); end
  def insert_after(*args, &block); end
  def insert_before(*args, &block); end
  def merge_into(other); end
  def swap(*args, &block); end
  def unshift(*args, &block); end
  def use(*args, &block); end
end
class Rails::Configuration::Generators
  def aliases; end
  def aliases=(arg0); end
  def colorize_logging; end
  def colorize_logging=(arg0); end
  def fallbacks; end
  def fallbacks=(arg0); end
  def hidden_namespaces; end
  def hide_namespace(namespace); end
  def initialize; end
  def initialize_copy(source); end
  def method_missing(method, *args); end
  def options; end
  def options=(arg0); end
  def templates; end
  def templates=(arg0); end
end
class Rails::Railtie
  def config; end
  def configure(&block); end
  def each_registered_block(type, &block); end
  def initialize; end
  def railtie_name(*args, &block); end
  def railtie_namespace; end
  def run_console_blocks(app); end
  def run_generators_blocks(app); end
  def run_runner_blocks(app); end
  def run_tasks_blocks(app); end
  def self.abstract_railtie?; end
  def self.config(*args, &block); end
  def self.configure(&block); end
  def self.console(&blk); end
  def self.generate_railtie_name(string); end
  def self.generators(&blk); end
  def self.inherited(base); end
  def self.instance; end
  def self.method_missing(name, *args, &block); end
  def self.new(*arg0); end
  def self.railtie_name(name = nil); end
  def self.rake_tasks(&blk); end
  def self.respond_to_missing?(*args); end
  def self.runner(&blk); end
  def self.subclasses; end
  extend Rails::Initializable::ClassMethods
  include Rails::Initializable
end
class Rails::Engine < Rails::Railtie
  def _all_autoload_once_paths; end
  def _all_autoload_paths; end
  def _all_load_paths; end
  def app; end
  def call(env); end
  def config; end
  def default_middleware_stack; end
  def eager_load!; end
  def endpoint; end
  def engine_name(*args, &block); end
  def env_config; end
  def has_migrations?; end
  def helpers; end
  def helpers_paths; end
  def initialize; end
  def isolated?(*args, &block); end
  def load_config_initializer(initializer); end
  def load_console(app = nil); end
  def load_generators(app = nil); end
  def load_runner(app = nil); end
  def load_seed; end
  def load_tasks(app = nil); end
  def middleware(*args, &block); end
  def paths(*args, &block); end
  def railties; end
  def root(*args, &block); end
  def routes; end
  def routes?; end
  def run_tasks_blocks(*arg0); end
  def self.called_from; end
  def self.called_from=(arg0); end
  def self.eager_load!(*args, &block); end
  def self.endpoint(endpoint = nil); end
  def self.engine_name(name = nil); end
  def self.find(path); end
  def self.find_root(from); end
  def self.find_root_with_flag(flag, root_path, default = nil); end
  def self.inherited(base); end
  def self.isolate_namespace(mod); end
  def self.isolated; end
  def self.isolated=(arg0); end
  def self.isolated?; end
end
class Rails::Engine::Railties
  def -(others); end
  def _all; end
  def each(*args, &block); end
  def initialize; end
  include Enumerable
end
class Rails::Application < Rails::Engine
  def assets; end
  def assets=(arg0); end
  def build_middleware_stack; end
  def build_original_fullpath(env); end
  def call(env); end
  def config; end
  def config=(configuration); end
  def config_for(name); end
  def console(&blk); end
  def default_middleware_stack; end
  def default_url_options(*args, &block); end
  def default_url_options=(arg); end
  def env_config; end
  def generators(&blk); end
  def helpers_paths; end
  def initialize!(group = nil); end
  def initialize(initial_variable_values = nil, &block); end
  def initialized?; end
  def initializer(name, opts = nil, &block); end
  def initializers; end
  def isolate_namespace(mod); end
  def key_generator; end
  def message_verifier(verifier_name); end
  def migration_railties; end
  def ordered_railties; end
  def railties_initializers(current); end
  def rake_tasks(&block); end
  def reload_routes!; end
  def reloaders; end
  def require_environment!; end
  def routes_reloader; end
  def run_console_blocks(app); end
  def run_generators_blocks(app); end
  def run_load_hooks!; end
  def run_runner_blocks(app); end
  def run_tasks_blocks(app); end
  def runner(&blk); end
  def sandbox; end
  def sandbox=(arg0); end
  def sandbox?; end
  def secrets; end
  def secrets=(secrets); end
  def self.add_lib_to_load_path!(root); end
  def self.create(initial_variable_values = nil, &block); end
  def self.find_root(from); end
  def self.inherited(base); end
  def self.instance; end
  def self.new(*arg0); end
  def to_app; end
  def validate_secret_key_config!; end
  def watchable_args; end
end
module Rails::VERSION
end
class Rails::Railtie::Configuration
  def after_initialize(&block); end
  def app_generators; end
  def app_middleware; end
  def before_configuration(&block); end
  def before_eager_load(&block); end
  def before_initialize(&block); end
  def eager_load_namespaces; end
  def initialize; end
  def method_missing(name, *args, &blk); end
  def respond_to?(name, include_private = nil); end
  def self.eager_load_namespaces; end
  def to_prepare(&blk); end
  def to_prepare_blocks; end
  def watchable_dirs; end
  def watchable_files; end
end
class Rails::TestUnitRailtie < Rails::Railtie
end
class Rails::Engine::Configuration < Rails::Railtie::Configuration
  def autoload_once_paths; end
  def autoload_once_paths=(arg0); end
  def autoload_paths; end
  def autoload_paths=(arg0); end
  def eager_load_paths; end
  def eager_load_paths=(arg0); end
  def generators; end
  def initialize(root = nil); end
  def middleware; end
  def middleware=(arg0); end
  def paths; end
  def root; end
  def root=(value); end
end
class SourceAnnotationExtractor
  def display(results, options = nil); end
  def extract_annotations_from(file, pattern); end
  def find(dirs); end
  def find_in(dir); end
  def initialize(tag); end
  def self.enumerate(tag, options = nil); end
  def tag; end
end
class Anonymous_Struct_2 < Struct
  def line; end
  def line=(_); end
  def self.[](*arg0); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
  def tag; end
  def tag=(_); end
  def text; end
  def text=(_); end
end
class SourceAnnotationExtractor::Annotation < Anonymous_Struct_2
  def self.directories; end
  def self.extensions; end
  def self.register_extensions(*exts, &block); end
  def to_s(options = nil); end
end
class Rails::Application::Configuration < Rails::Engine::Configuration
  def allow_concurrency; end
  def allow_concurrency=(arg0); end
  def annotations; end
  def asset_host; end
  def asset_host=(arg0); end
  def assets=(arg0); end
  def autoflush_log; end
  def autoflush_log=(arg0); end
  def beginning_of_week; end
  def beginning_of_week=(arg0); end
  def cache_classes; end
  def cache_classes=(arg0); end
  def cache_store; end
  def cache_store=(arg0); end
  def colorize_logging; end
  def colorize_logging=(val); end
  def consider_all_requests_local; end
  def consider_all_requests_local=(arg0); end
  def console; end
  def console=(arg0); end
  def database_configuration; end
  def eager_load; end
  def eager_load=(arg0); end
  def encoding; end
  def encoding=(value); end
  def exceptions_app; end
  def exceptions_app=(arg0); end
  def file_watcher; end
  def file_watcher=(arg0); end
  def filter_parameters; end
  def filter_parameters=(arg0); end
  def filter_redirect; end
  def filter_redirect=(arg0); end
  def force_ssl; end
  def force_ssl=(arg0); end
  def has_explicit_log_level?; end
  def helpers_paths; end
  def helpers_paths=(arg0); end
  def initialize(*arg0); end
  def log_formatter; end
  def log_formatter=(arg0); end
  def log_level; end
  def log_level=(level); end
  def log_tags; end
  def log_tags=(arg0); end
  def logger; end
  def logger=(arg0); end
  def paths; end
  def railties_order; end
  def railties_order=(arg0); end
  def relative_url_root; end
  def relative_url_root=(arg0); end
  def reload_classes_only_on_change; end
  def reload_classes_only_on_change=(arg0); end
  def secret_key_base; end
  def secret_key_base=(arg0); end
  def secret_token; end
  def secret_token=(arg0); end
  def serve_static_assets; end
  def serve_static_assets=(value); end
  def serve_static_files; end
  def serve_static_files=(arg0); end
  def session_options; end
  def session_options=(arg0); end
  def session_store(*args); end
  def ssl_options; end
  def ssl_options=(arg0); end
  def static_cache_control; end
  def static_cache_control=(arg0); end
  def time_zone; end
  def time_zone=(arg0); end
  def x; end
  def x=(arg0); end
end
class Rails::Application::Configuration::Custom
  def initialize; end
  def method_missing(method, *args); end
  def respond_to_missing?(symbol, *arg1); end
end
module Rails::Application::Bootstrap
  extend Rails::Initializable::ClassMethods
  include Rails::Initializable
end
module Rails::Application::Finisher
  extend Rails::Initializable::ClassMethods
  include Rails::Initializable
end
class Rails::Application::RoutesReloader
  def clear!; end
  def execute(*args, &block); end
  def execute_if_updated(*args, &block); end
  def finalize!; end
  def initialize; end
  def load_paths; end
  def paths; end
  def reload!; end
  def revert; end
  def route_sets; end
  def updated?(*args, &block); end
  def updater; end
end
class Rails::BacktraceCleaner < ActiveSupport::BacktraceCleaner
  def add_gem_filters; end
  def initialize; end
end
class Rails::Application::DefaultMiddlewareStack
  def allow_concurrency?; end
  def app; end
  def build_stack; end
  def config; end
  def initialize(app, config, paths); end
  def load_rack_cache; end
  def paths; end
  def reload_dependencies?; end
  def show_exceptions_app; end
end
class Rails::Rack::Logger < ActiveSupport::LogSubscriber
end
module Rails::Generators
  def namespace; end
  def namespace=(obj); end
  def self.aliases; end
  def self.configure!(config); end
  def self.fallbacks; end
  def self.find_by_namespace(name, base = nil, context = nil); end
  def self.help(command = nil); end
  def self.hidden_namespaces; end
  def self.hide_namespace(*namespaces); end
  def self.hide_namespaces(*namespaces); end
  def self.invoke(namespace, args = nil, config = nil); end
  def self.invoke_fallbacks_for(name, base); end
  def self.levenshtein_distance(str1, str2); end
  def self.lookup!; end
  def self.lookup(namespaces); end
  def self.namespace; end
  def self.namespace=(obj); end
  def self.namespaces_to_paths(namespaces); end
  def self.no_color!; end
  def self.options; end
  def self.print_generators; end
  def self.print_list(base, namespaces); end
  def self.public_namespaces; end
  def self.sorted_groups; end
  def self.subclasses; end
  def self.templates_path; end
end
module Rails::Generators::Testing
end
module Rails::Generators::Testing::Behaviour
  def capture(stream); end
  def create_generated_attribute(attribute_type, name = nil, index = nil); end
  def destination_root_is_set?; end
  def ensure_current_path; end
  def generator(args = nil, options = nil, config = nil); end
  def migration_file_name(relative); end
  def prepare_destination; end
  def run_generator(args = nil, config = nil); end
  extend ActiveSupport::Concern
end
module Rails::Generators::Testing::Behaviour::ClassMethods
  def arguments(array); end
  def destination(path); end
  def tests(klass); end
end
module Rails::Generators::Testing::SetupAndTeardown
  def setup; end
  def teardown; end
end
module Rails::Generators::Testing::Assertions
  def assert_class_method(method, content, &block); end
  def assert_directory(relative, *contents); end
  def assert_field_default_value(attribute_type, value); end
  def assert_field_type(attribute_type, field_type); end
  def assert_file(relative, *contents); end
  def assert_instance_method(method, content); end
  def assert_method(method, content); end
  def assert_migration(relative, *contents, &block); end
  def assert_no_directory(relative); end
  def assert_no_file(relative); end
  def assert_no_migration(relative); end
end
class Rails::Generators::TestCase < ActiveSupport::TestCase
  def current_path; end
  def current_path=(arg0); end
  def current_path?; end
  def default_arguments; end
  def default_arguments=(arg0); end
  def default_arguments?; end
  def destination_root; end
  def destination_root=(arg0); end
  def destination_root?; end
  def generator_class; end
  def generator_class=(arg0); end
  def generator_class?; end
  def self.current_path; end
  def self.current_path=(val); end
  def self.current_path?; end
  def self.default_arguments; end
  def self.default_arguments=(val); end
  def self.default_arguments?; end
  def self.destination_root; end
  def self.destination_root=(val); end
  def self.destination_root?; end
  def self.generator_class; end
  def self.generator_class=(val); end
  def self.generator_class?; end
  extend Rails::Generators::Testing::Behaviour::ClassMethods
  include FileUtils
  include Rails::Generators::Testing::Assertions
  include Rails::Generators::Testing::Behaviour
  include Rails::Generators::Testing::SetupAndTeardown
end
class ActiveRecord::ExplainRegistry
  def self.collect?(*args, &block); end
end
class ActiveRecord::Scoping::ScopeRegistry
  def self.value_for(*args, &block); end
end
module Anonymous_ActiveRecord_AttributeMethods_GeneratedAttributeMethods_3
  def reset_version!(*args); end
  def restore_version!(*args); end
  def version; end
  def version=(value); end
  def version?(*args); end
  def version_before_type_cast(*args); end
  def version_came_from_user?(*args); end
  def version_change(*args); end
  def version_changed?(*args); end
  def version_was(*args); end
  def version_will_change!(*args); end
end
class ActiveSupport::TestCase < Minitest::Test
  def config; end
  def config=(arg0); end
  def config?; end
  def fixture_class_names; end
  def fixture_class_names=(arg0); end
  def fixture_class_names?; end
  def fixture_path; end
  def fixture_path?; end
  def fixture_table_names; end
  def fixture_table_names=(arg0); end
  def fixture_table_names?; end
  def pre_loaded_fixtures; end
  def pre_loaded_fixtures=(arg0); end
  def pre_loaded_fixtures?; end
  def self.config; end
  def self.config=(val); end
  def self.config?; end
  def self.fixture_class_names; end
  def self.fixture_class_names=(val); end
  def self.fixture_class_names?; end
  def self.fixture_path; end
  def self.fixture_path=(val); end
  def self.fixture_path?; end
  def self.fixture_table_names; end
  def self.fixture_table_names=(val); end
  def self.fixture_table_names?; end
  def self.pre_loaded_fixtures; end
  def self.pre_loaded_fixtures=(val); end
  def self.pre_loaded_fixtures?; end
  def self.use_instantiated_fixtures; end
  def self.use_instantiated_fixtures=(val); end
  def self.use_instantiated_fixtures?; end
  def self.use_transactional_fixtures; end
  def self.use_transactional_fixtures=(val); end
  def self.use_transactional_fixtures?; end
  def use_instantiated_fixtures; end
  def use_instantiated_fixtures=(arg0); end
  def use_instantiated_fixtures?; end
  def use_transactional_fixtures; end
  def use_transactional_fixtures=(arg0); end
  def use_transactional_fixtures?; end
  extend ActiveRecord::TestFixtures::ClassMethods
  include ActiveRecord::TestFixtures
end
class ActionDispatch::IntegrationTest < ActiveSupport::TestCase
  def self.fixture_path; end
end
class Object < BasicObject
  def create_fixtures(*fixture_set_names, &block); end
end
class ActionController::TestCase < ActiveSupport::TestCase
end
