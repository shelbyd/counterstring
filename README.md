# Counterstring

A simple gem and library for generating counter strings.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'counterstring'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install counterstring

## Usage

For command line usage:

    $ counterstring <number>

For library usage:

```ruby
Counterstring.new(4).to_s # 1*3*
Counterstring.new(20).to_s # 1*3*5*7*9*12*15*18*2
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment. Run `bundle exec counterstring` to use the gem in this directory, ignoring other installed copies of this gem.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/counterstring.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
