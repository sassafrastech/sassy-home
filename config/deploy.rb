require 'bundler/capistrano'

server 'sassafras.coop', :app, :web, :db, :primary => true

set :branch, "master"
set :ping_url, "http://sassafras.coop"
set :user, 'tomsmyth'
set :home_dir, '/home/tomsmyth'
set :application, "sass_site"
set :scm, 'git'
set :repository, "https://github.com/sassafrastech/sassy-home.git"
set (:deploy_to) {"#{home_dir}/webapps/rails2/sass_site"}
set :deploy_via, :remote_cache
set :use_sudo, false
set :default_environment, {
  "PATH" => "$PATH:$HOME/bin:$HOME/webapps/rails2/bin",
  "GEM_HOME" => "$HOME/webapps/rails2/gems"
}

default_run_options[:pty] = true
ssh_options[:forward_agent] = true

set :rails_env, 'production'

desc "Echo environment vars"
namespace :env do
  task :echo do
    run "echo printing out cap info on remote server"
    run "echo $PATH"
    run "printenv"
  end
end

after "deploy", "deploy:cleanup" # keep only the last 5 releases

namespace :deploy do
  %w[start stop restart].each do |command|
    desc "#{command} server"
    task command, roles: :app, except: {no_release: true} do
      run "#{home_dir}/webapps/rails2/bin/#{command}"
    end
  end

  task :setup_config, roles: :app do
    run "mkdir -p #{shared_path}/config"
    put File.read("config/railsenv.example"), "#{shared_path}/config/railsenv"
    puts "Now edit the config files in #{shared_path}."
  end
  after "deploy:setup", "deploy:setup_config"

  task :symlink_config, roles: :app do
    run "ln -nfs #{shared_path}/config/railsenv #{release_path}/config/railsenv"
  end
  after "deploy:finalize_update", "deploy:symlink_config"

  desc "Make sure local git is in sync with remote."
  task :check_revision, roles: :web do
    unless `git rev-parse HEAD` == `git rev-parse origin/#{branch}`
      puts "WARNING: HEAD is not the same as origin"
      puts "Run `git push` to sync changes."
      exit
    end
  end
  before "deploy", "deploy:check_revision"

  desc "ping the server so that it connects to db"
  task :ping, roles: :web do
    run "curl -s #{ping_url} > /dev/null"
  end
  after "deploy:restart", "deploy:ping"
end