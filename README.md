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
