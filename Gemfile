source 'https://rubygems.org'

gem 'rails', '4.2.11.1'

ruby '2.5.5'

gem 'sassc-rails'
gem 'uglifier'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder'
gem 'rails-html-sanitizer'
gem 'sdoc', group: :doc
gem 'overcommit'

gem 'sorbet'
gem 'sorbet-runtime'
gem 'sorbet-rails'
gem 'minitest' # 7/15/2019: Needed by 'sorbet'

group :development do
  gem 'web-console'
end

group :development, :test do
  gem 'sqlite3', '1.3.13' # 2/7/2019: LOCKED DOWN
  gem 'byebug'
  gem 'spring'
end

group :test do
  gem 'minitest-reporters'
  gem 'mini_backtrace'
  gem 'guard-minitest'
  gem 'guard'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end
