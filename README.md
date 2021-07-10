# Rails demo project

## System dependencies

  - Ruby 2.5+
  - Sqlite3

## Installation
  ```bash
    # install repo to ~/rails-demo
    mkdir ~/rails-demo
    git clone git@github.com:alexeisersun/rails-demo.git ~/rails-demo
    cd ~/rails-demo

    # install dependencies
    bundle install
  ```
## Database creation

  ```bash
    bundle exec rails db:create db:migrate
  ```

## Usage

  Launch the server using:

  ```bash
    bundle exec rails server
  ```
