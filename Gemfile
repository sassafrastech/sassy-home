source 'https://rubygems.org'

# Use a branch until they release a bug fix
# https://github.com/rails/rails/commit/892eab777c418135ce0646e91bc9ebb08a29ab9b
ruby '2.7.5'
gem 'rails', '~> 5.2'

# Lock some dependencies that require newer versions of ruby
gem 'i18n', '~> 1.4'
gem 'nio4r', '~> 2.3'
gem 'nokogiri', '~> 1.13'

gem 'json', '~> 2.1'
gem 'sqlite3', '~> 1.3'

# Asset gems
gem 'sassc-rails'
gem 'uglifier', '~> 4.1'

gem 'jquery-rails', '~> 4.3'
# gem 'mini_racer' this causes build failures and doesn't seem to be necessary and i'm tired of fighting it

# Support Markdown
gem 'redcarpet', '~> 3.4'

group :development do
  gem 'letter_opener', '~> 1.6'
  gem 'dotenv-rails'
  gem 'puma'
  gem 'rubocop'
end
