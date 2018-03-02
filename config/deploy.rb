# config valid only for current version of Capistrano
lock '3.10.1'

set :application, 'sassy_home'
set :deploy_to, -> { "/home/sassafras/webapps/ror/sassy_home_#{fetch(:stage)}" }
set :pty, true
set :passenger_restart_with_touch, true
set :repo_url, 'git@github.com:sassafrastech/sassy-home.git'
set :linked_files, fetch(:linked_files, []).push('config/secrets.yml')
set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'public/system')
set :tmp_dir, "/home/sassafras/tmp"
set :default_env, {
  path: "$HOME/bin:$HOME/webapps/ror/bin:$PATH",
  gem_home: "$HOME/webapps/ror/gems",
  pgoptions: "'-c statement_timeout=0'"
}

namespace :deploy do
  before :started, :ensure_pushed do
    if `git rev-parse #{fetch(:branch)}` == `git rev-parse origin/#{fetch(:branch)}`
      puts "Everything seems to be pushed up. Great!"
    else
      puts "ERROR: HEAD is not the same as origin"
      puts "Run `git push` to sync changes."
      exit
    end
  end
end
