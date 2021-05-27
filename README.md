# WWW

[![Crystal CI](https://github.com/c910335/www/actions/workflows/crystal.yml/badge.svg)](https://github.com/c910335/www/actions/workflows/crystal.yml)

The simplest HTTP client for Crystal (only GET with HTTPS)

## Installation

1. Add the dependency to your `shard.yml`:

```yaml
dependencies:
  www:
    github: c910335/www
```

2. Run `shards install`

## Usage

```crystal
require "www"

puts www.example.org # => "<!doctype html>\n<html>\n<head>\n    <title>Example Domain</title> ..."

# Or if the url does not start with "www"

www example

puts example.com # => "<!doctype html>\n<html>\n<head>\n    <title>Example Domain</title> ..."
```

## Contributing

1. Fork it (<https://github.com/c910335/www/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Tatsujin Chin](https://github.com/c910335) - creator and maintainer
