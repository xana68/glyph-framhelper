# config valid only for current version of Capistrano
lock '3.4.0'

set :application, 'my_app_name'
set :repo_url, 'git@example.com:me/my_repo.git'

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, '/var/www/my_app_name'

# Default value for :scm is :git
# set :scm, :git

# Default value for :format is :pretty
# set :format, :pretty

# Default value for :log_level is :debug
# set :log_level, :debug

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# set :linked_files, fetch(:linked_files, []).push('config/database.yml', 'config/secrets.yml')

# Default value for linked_dirs is []
# set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system')

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
# set :keep_releases, 5

namespace :deploy do

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end

end
SSHKit.config.format = :dot

set :application, ''
set :repo_url, ''
set :ruby_version, '2.1.5'

# Bundler config :
set :bundle_flags, '--deployment'

# Logging config :
set :log_level, :debug

# Terminal config :
set :pty, true

set :rvm_ruby_version, -> { "#{ fetch(:ruby_version) }@#{ fetch(:stage) }" }
set :deploy_to, proc { "/var/www/#{ fetch(:stage) }" }

# Whenever config :
set :whenever_identifier, ->{ "#{ fetch(:application) }_#{ fetch(:stage) }" }

# Capistrano-db-tasks config :
# Remove the local dump file after loading and dump file from the server
# after downloading
set :db_local_clean, true
set :db_remote_clean, true

# Dynamic shared files linking config :
set :linked_files, %w{.env .ruby-version .ruby-gemset}
set :linked_dirs, %w{log public/system tmp/cache}

# Rails / Unicorn config
set :rails_env, -> { fetch(:stage) }
set :unicorn_env, -> { fetch(:stage) }
after 'deploy:publishing', 'unicorn:duplicate'

namespace :logs do
  desc "tail rails logs"
  task :tail do
    trap("INT") do
      puts "\nInterupted\n"
      exit 0
    end

    on roles(:app) do
      execute "tail -f #{shared_path}/log/#{ fetch(:stage) }.log"
    end
  end
end
