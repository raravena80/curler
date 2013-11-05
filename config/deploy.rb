set :application, 'cURLer'
#set :repo_url, 'git@example.com:me/my_repo.git'
set :repo_url, 'git@github.com:raravena80/curler.git'

# ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }
set :branch, 'master'

# set :deploy_to, '/var/www/my_app'
set :deploy_to, '/var/www/curler'
# set :scm, :git
set :scm, :git

# set :format, :pretty
# set :log_level, :debug
# set :pty, true

# set :linked_files, %w{config/database.yml}
# set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}
set :linked_dirs, %w{log tmp public}

# set :default_env, { path: "/opt/ruby/bin:$PATH" }
# set :keep_releases, 5

set :use_sudo, true
set :sudo, "sudo -u www-data"
