source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"

gem "rails", "~> 7.0.10"
gem "sprockets-rails"
gem "pg", "~> 1.1"
gem "puma", ">= 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false
gem "bootstrap-sass", "~> 3.4"
gem "sassc-rails", "~> 2.1"

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem 'rails-controller-testing'
end

group :development do
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "guard"
  gem "guard-minitest"
  gem "minitest-reporters"
end

gem "bcrypt", "~> 3.1"
gem "faker", "~> 3.5"
gem "will_paginate", "~> 3.3.1"
gem "bootstrap-will_paginate", "~> 1.0"
gem "active_storage_validations", "0.9.8"
gem "image_processing", "1.12.2"
gem "dotenv-rails", "~> 3.2"
