role :app, %w{tomsmyth@sassafras.coop}
role :web, %w{tomsmyth@sassafras.coop}
role :db,  %w{tomsmyth@sassafras.coop}
set :rails_env, 'production'
set :branch, 'master'
set :bundle_path, -> { "/home/tomsmyth/webapps/rails/gems" }
set :bundle_binstubs, -> { "/home/tomsmyth/webapps/rails/bin" }
