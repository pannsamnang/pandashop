source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end
gem 'rails', '~> 5.1.6'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails', '~> 4.2.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'haml', '~> 5.0', '>= 5.0.4'
gem 'asset_sync', '~> 2.4'
gem 'dotenv-rails'
gem "fog-aws"
gem 'camaleon_cms', '~> 2.4'
gem 'camaleon_ecommerce', '~> 2.0', '>= 2.0.4'
gem 'materialize-sass',     '0.97.7'
gem 'draper', '~> 3.0', '>= 3.0.1'
gem "camaleon_post_clone"
gem 'kaminari', '~> 1.1', '>= 1.1.1'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry'
end

group :development do
  gem 'capistrano-rails', '~> 1.3', '>= 1.3.1'
  gem 'capistrano-passenger'
  gem 'capistrano-rvm'
  gem 'capistrano-rails-console', '~> 1.0.2'
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'sshkit-sudo'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]


#################### Camaleon CMS include all gems for plugins and themes ####################
require './lib/plugin_routes'
instance_eval(PluginRoutes.draw_gems)
