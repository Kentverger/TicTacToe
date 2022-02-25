kill -9 `cat tmp/pids/server.pid`
RAILS_ENV=development bundle exec rails s
