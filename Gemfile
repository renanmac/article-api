source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.0'

gem 'rails', '~> 5.2.0'
gem 'sqlite3'
gem 'puma', '~> 3.11'
gem 'will_paginate', '~> 3.1.0'

gem 'bootsnap', '>= 1.1.0', require: false
gem 'simplecov', require: false, group: :test

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'faker', :git => 'https://github.com/stympy/faker.git', :branch => 'master'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
