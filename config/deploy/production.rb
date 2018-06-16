server '18.222.145.115',   user: 'deployer', roles: %w{app web db}
set :rails_env,           'production'
set :rvm_type,            :user
set :rvm_ruby_version,    'ruby-2.3.3'

namespace :deploy do
  task :restart do
    on roles(:web) do |host|
      execute "curl http://18.222.145.115"
    end
  end
end
