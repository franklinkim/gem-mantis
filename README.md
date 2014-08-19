# snippy

[![Gem Version](https://badge.fury.io/rb/snippy.png)](http://badge.fury.io/rb/snippy)

> Gem with some useful command line tools.

## Installation

```
$ gem install snippy
```

## Usage

```
$ snippy
Commands:
  snippy apache SUBCOMMAND ...ARGS  # Snippets & Tools for apache
  snippy help [COMMAND]             # Describe available commands or one specific command

Options:
  [--verbose]
```

### Apache

```
$ snippy apache
Commands:
  snippy apache certificate FILENAME  # Create self signed openssl certificate.
  snippy apache help [COMMAND]        # Describe subcommands or one specific subcommand
```

## Development

When developing you can use the given `rake` tasks:

```
$ rake -T
rake build    # Build snippy-0.1.1.gem into the pkg directory.
rake install  # Build and install snippy-0.1.1.gem into system gems.
rake release  # Create tag v0.1.1 and build and push snippy-0.1.1.gem to Rubygems```
```

## Contributing
In lieu of a formal styleguide, take care to maintain the existing coding style. Add unit tests for any new or changed functionality.

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License
Copyright (c) 2013 franklin under the MIT license.
