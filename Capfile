# Load DSL and set up stages
require 'capistrano/setup'

require 'airbrussh/capistrano'
require 'capistrano/rvm'
require 'capistrano/deploy'
require 'capistrano/bundler'
require 'capistrano/rails/assets'
require 'capistrano/rails/migrations'
require 'capistrano/passenger'
require 'capistrano/rails/console'

# Load custom tasks from `lib/capistrano/tasks` if you have any defined
Dir.glob('lib/capistrano/tasks/*.rake').each { |r| import r }
