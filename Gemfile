source 'https://rubygems.org'
ruby '2.1.2'

gem 'rails', '4.1.5'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'passenger'
gem 'sass-rails', '~> 4.0.3'
gem 'pg'
gem 'bootstrap-sass'

gem 'devise'

# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

group :production do
  gem 'rails_12factor'
  gem 'rails_serve_static_assets'
  gem 'airbrake'
  gem 'newrelic_rpm'
end

group :test do
  gem 'database_cleaner'
  gem 'codeclimate-test-reporter', require: nil
  gem 'shoulda-matchers', require: false
  gem 'simplecov'
  gem 'faker'
  gem 'capybara'
  gem 'capybara-webkit'
  gem 'capybara-screenshot'
  gem 'launchy'
  gem 'vcr'
end

group :test, :development do
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'assert_difference'
  gem 'byebug'
  gem 'pry'
  gem 'pry-byebug'
  gem 'pry-remote'
  gem 'pry-rails'
  gem 'dotenv-rails'
  gem 'fuubar'
  gem 'rubocop'
end

group :development do
  gem 'rails_layout'
  gem 'quiet_assets'
  gem 'guard'
  gem 'guard-rspec', require: false
  gem 'guard-rubocop'
  gem 'guard-rails'
  gem 'guard-bundler'
  gem 'guard-passenger'
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'rb-fsevent', require: false
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'foreman'
end