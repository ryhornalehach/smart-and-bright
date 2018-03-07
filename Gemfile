source 'https://rubygems.org/'
ruby "2.3.3"

gem 'rails', '5.0.0.1'
gem 'pg', '~> 0.15'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'jquery-rails'
gem 'listen'
gem "devise"  # autentication
gem "carrierwave" # uploading files gem
gem 'materialize-sass'  # adding materialize css

group :development, :test do
  gem 'capybara'
  gem 'dotenv-rails'  # handling the environmental variables
  gem 'rspec-rails', '~> 3.0'
  gem 'rails-controller-testing'  # ability to test controllers with rspec
  gem 'pry-rails'
  gem 'shoulda'
  gem 'valid_attribute'
end

group :test do
  gem 'launchy', require: false
  gem 'coveralls', require: false # adding coveralls badge
  gem 'database_cleaner'  # database cleaner for test environment
end

group :production do
  gem 'rails_12factor'
end
