role :app, %w{sassafras@sassafras.coop}
role :web, %w{sassafras@sassafras.coop}
role :db,  %w{sassafras@sassafras.coop}
set :rails_env, 'production'
set :branch, 'master'
set :bundle_path, -> { "/home/sassafras/webapps/ror/gems" }
set :bundle_binstubs, -> { "/home/sassafras/webapps/ror/bin" }
