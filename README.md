# Sassy Home

https://sassafras.coop/

## Development

### Requirements

- Ruby (via [rbenv](https://github.com/rbenv/rbenv))

### Setup

1. `git clone git@github.com:sassafrastech/sassy-home.git`
1. `cd sassy-home`
1. `rbenv install # Install the required Ruby version.`
1. `gem install bundler # Install the installer.`
1. `bundle install`
1. `cp config/secrets.yml.example config/secrets.yml`

### Run

1. `rails s # Start the server.`
1. Open <http://localhost:3000/>

### Deploy

1. Add your SSH key to the server specified in `config/deploy/production.rb`
1. ``bundle exec cap production deploy # Deploy code from the `main` branch from GitHub``
