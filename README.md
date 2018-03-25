# RubyNumbers

Let’s get functional, functional.
We want to write calculations using functions and get the results.

Here are some examples:

```
six(times(five)) # must return 30
one(plus(nine)) # must return 10
six(minus(three)) # must return 3
eight(divided_by(two)) # must return 4
```

Requirements:

- There must be a function for each number from 0 (“zero”) to 9 (“nine”)
- There must be a function for each of the following mathematical operations: plus, minus, times, divided_by
- Each calculation consist of exactly one operation and two numbers
- The most outer function represents the left operand, the most inner function represents the right operand

Guidelines

- Use Git and commit as often as you think is necessary to properly tell your story
- Write tests using RSpec proving that your solution works (TDD strongly encouraged)
- Use whatever tools you’d like (gems, patterns, etc)
- Engineer your solution as if there’s a high chance it will be re-used
- Keep lines wrapped at 120 characters
- Enjoy this challenge!

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ruby_numbers'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ruby_numbers

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/ruby_numbers.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
