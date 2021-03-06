lock '3.11.0'

set :application, 'pandashop'
set :repo_url, 'git@github.com:pannsamnang/pandashop.git'
ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

set :deploy_to, "/var/www/#{fetch(:application)}"

set :log_level, :debug

set :linked_files, fetch(:linked_files, []).push(
  '.env'
)

set :linked_dirs, fetch(:linked_dirs, []).push(
  'log',
  'tmp/pids',
  'tmp/cache',
  'tmp/sockets',
  'vendor/bundle',
  'public/system'
)

set :keep_releases, 5
set :conditionally_migrate, true
set :passenger_restart_with_touch, true
