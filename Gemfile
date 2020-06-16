source 'http://rubygems.org'

# Use a branch until they release a bug fix
# https://github.com/rails/rails/commit/892eab777c418135ce0646e91bc9ebb08a29ab9b
gem 'rails', github: "rails/rails", branch: "5-2-stable"

# Lock some dependencies that require newer versions of ruby
gem 'i18n', '~> 1.4.0'
gem 'nokogiri', '~> 1.10.9'
gem 'nio4r', '~> 2.3.0'

gem 'sqlite3', '~> 1.3'
gem 'json', '~> 2.1'

# Asset gems
gem 'sass-rails', '~> 5.0.0'
gem 'uglifier', '~> 4.1'

gem 'therubyracer', '~> 0.12'
gem 'jquery-rails', '~> 4.3'

# Support Markdown
gem 'redcarpet', '~> 3.4'

group :development do
  gem 'letter_opener', '~> 1.6'

  gem 'capistrano', '~> 3.0'
  gem 'capistrano-rails', '~> 1.1'
  gem 'capistrano-bundler', '~> 1.1'
  gem 'capistrano-passenger', '~> 0.2'
end
