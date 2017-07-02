# The Bath of Zahn

These are some Rubocop configurations that I use in my personal projects.
I created this gem when it became difficult to synchronize these rules between
the several projects I work on.

Many of the rules were defined for Rails applications; files such as
`db/schema.rb` are ignored since they are automatically generated, and
tests/specs can have as many lines as desired.

The rules here were generally guided by a few principles:

1. Prefer what the Ruby community seems to follow as a whole
1. Prefer rules which result in a smaller `git diff`
1. Avoid unnecessarily changing default behavior


## Installation

Add this line to your application's Gemfile:

```ruby
gem "the_bath_of_zahn"
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install the_bath_of_zahn


## Usage

Create a `.rubocop.yml` file in your repository with the following contents

```yaml
inherit_gem:
  the_bath_of_zahn: rubocop-rails.yml
```

Or, if you are not working on a Rails project, there's a non-Rails configuration
as well.

```yaml
inherit_gem:
  the_bath_of_zahn: rubocop.yml
```


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run
`rake test` to run the tests. You can also run `bin/console` for an interactive
prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To
release a new version, update the version number in `version.rb`, and then run
`bundle exec rake release`, which will create a git tag for the version, push
git commits and tags, and push the `.gem` file to
[rubygems.org](https://rubygems.org).


## Contributing

Bug reports, pull requests, and suggestions are all welcome on GitHub at
https://github.com/zachahn/the_bath_of_zahn.


## License

The gem is available as open source under the terms of the
[MIT License](http://opensource.org/licenses/MIT).
