# TicTacToe

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/tic_tac_toe`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'tic_tac_toe'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tic_tac_toe

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/tic_tac_toe. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the TicTacToe project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/tic_tac_toe/blob/master/CODE_OF_CONDUCT.md).

# Tic_Tac_toe_Ruby

This game will be able to be played by two players from the command line.

The board is a 3 x 3 grid and players will play until a player wins or until there is a draw.

Winning the game can be achieved by securing three adjacent positions in a row, column or diagonal. The game ends in a draw if neither player has won but all the positions on the board are occupied.

The following principles are followed in designing this game.

* single purpose classes are designed so that the source code is easy to modify. The process to do this includes identifying the nouns from specifications.

* the game is built from a TDD perspective.

* the Bundler gem was used to create a gem called tic_tac_toe so that it can be included in other projects.

## Setup

* created the directory for the project
* run 'bundle init' from the terminal
* in the Gemfile add 'bundle gem tic_tac_toe' (if you agree to all the permissions follow the displayed instructions)

## Classes
* Started designing the game by testing the object(Cell) which requires no arguments.
* It will be instantiated with a default value of nil.
* It can also be instantiated with an 'x' or an 'o'.
* Next, the player class was designed to keep track of two players during the game, so that a winner could be decided on.
* The Player class tracks the player's name and symbol of choice. It is instantiated with a hash with the :name and :symbol keys.
* The board class facilitates the tic-tac-toe grid, and checks how the game ends.
* The main assumption in the board class is that the grid is a square array of width 3. ie. the grid is an Array of Arrays with the following structure:

grid = [
    ['X', 'O', 'X'],
    ['O', 'X', 'O'],
    ['X', 'O', 'X']
]
* The board class is initialized with a hash that has a :grid key.
* The board is filled with empty cell objects on initialization.
* I attempted to make sure the Board class focuses on behaviour instead of the data structure specified in the method (ie. a nested Array)
