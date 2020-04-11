# Graeters Cloud Apps Project

Things you may want to cover:

* Ruby version = 2.7.0

* Rails 6.0.2

* Database MySQL 5.7


## DEV Environment Commands

* RUBYOPT='-W:no-deprecated -W:no-experimental' rails server

* RUBYOPT='-W:no-deprecated -W:no-experimental' db:seed

* RUBYOPT='-W:no-deprecated -W:no-experimental' db:migrate

* docker run --name gas -v $PWD:/var/lib/mysql -e MYSQL_ALLOW_EMPTY_PASSWORD -p 3306:3306 -d mysql:5.7


## Troubleshooting Commands

* bundle config --global build.mysql2 --with-opt-dir="$(brew --prefix openssl)"
