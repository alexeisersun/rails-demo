# Rails demo project

## System dependencies

  - Ruby 2.5+
  - Sqlite3

```bash
# for Linux
sudo apt install sqlite3

# for macOS
brew install sqlite

```

## Installation
  ```bash  
    # install repo to ~/rails-demo
    mkdir ~/rails-demo
    git clone https://github.com/alexeisersun/rails-demo.git ~/rails-demo
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
