# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'

gem 'bootsnap', '>= 1.1.0', require: false
gem 'bootstrap', '~> 4.4.1'
gem 'devise', '~> 4.7.1'
gem 'factory_bot_rails'
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails', '~> 4.4.0'
gem 'pg', '0.20'
gem 'puma', '~> 3.11'
gem 'rails', '~> 6.0.3', '>= 6.0.3.2'
gem 'redis', '~> 4.2.1'
gem 'sass-rails', '~> 6.0.0'
gem 'simple_form', '~> 5.0.2'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'
gem 'webpacker', '~> 4.0'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'rspec-rails', '~> 4.0.0'
  gem 'simplecov', require: false
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
  gem 'selenium-webdriver'
end

gem 'tzinfo-data'
