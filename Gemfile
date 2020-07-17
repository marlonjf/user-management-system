# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

gem 'bootsnap', '>= 1.1.0', require: false
gem 'bootstrap', '~> 4.4.1'
gem 'coffee-rails', '~> 4.2'
gem 'devise', '~> 4.7.1'
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails'
gem 'pg', '0.20'
gem 'puma', '~> 3.11'
gem 'rails', '~> 6.0.3', '>= 6.0.3.2'
gem 'redis'
gem 'sass-rails', '~> 6.0.0'
gem 'simple_form'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'
gem 'webpacker', '~> 4.0'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem 'dotenv-rails', require: 'dotenv/load'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'rubocop', '0.78.0'
  gem 'rubocop-rails', '2.1.0'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'chromedriver-helper'
  gem 'rspec-rails', '~> 4.0.0'
  gem 'selenium-webdriver'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
