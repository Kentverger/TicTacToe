# Tic Tac Toe
This is a simple Tic Tac Toe application game, Built with RoR as a backend and vanilla JS for front.

The javascript code only handles the UI interactions, the UI changes and the server backend communications.

The backend handles the record of games and turns also the win condition of the game.

## Dependencies
`Rails 7.0.2.2`
`Node v17.6.0`
`PostgreSQL 13.5`

## Running the project
```
$ git clone git@github.com:Kentverger/TicTacToe.git
$ cd TicTacToe
$ bundle install
# Modify config/database.yml with your database credentials
$ rails db:setup
$ rails db:migrate
```
Open http://127.0.0.1:3000/games/new and play!!.

## Running the tests
```
$ rspec
```

### Generate rspec docs
```
$ rspec --format documentation --format html --out docs.html
```
