source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'figaro'
gem 'rails', '~> 5.1.6'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'devise'
gem 'bcrypt', git: 'git://github.com/codahale/bcrypt-ruby.git', :require => 'bcrypt'
gem 'bootstrap-sass'
gem 'jquery-rails'
gem 'pundit'
gem 'faker'
gem 'redcarpet'
gem 'jquery-ui-rails'
gem 'valid_url', git: 'git://github.com/jeka2/valid_url.git'


group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :production do
  gem 'pg'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'sqlite3'
end
