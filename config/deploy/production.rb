role :app, %w{tomsmyth@sassafras.coop}
role :web, %w{tomsmyth@sassafras.coop}
role :db,  %w{tomsmyth@sassafras.coop}
set :rails_env, 'production'
set :branch, 'migration'
set :bundle_path, -> { "/home/tomsmyth/ror/rails/gems" }
set :bundle_binstubs, -> { "/home/tomsmyth/ror/rails/bin" }
