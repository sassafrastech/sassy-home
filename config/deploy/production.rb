role :app, %w{tomsmyth@sassafras.coop}
role :web, %w{tomsmyth@sassafras.coop}
role :db,  %w{tomsmyth@sassafras.coop}
set :rails_env, 'production'
set :branch, 'migration'
set :bundle_path, -> { "/home/tomsmyth/webapps/ror/gems" }
set :bundle_binstubs, -> { "/home/tomsmyth/webapps/ror/bin" }
