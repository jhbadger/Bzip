# Bzip

This provides a Bzip::Reader analogous to Crystal's Gzip::Reader. It
isn't the most efficient as it calls bzcat and loads the file into
memory, but works for now.

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  Bzip:
    github: jhbadger/Bzip
```

## Usage

```crystal
require "Bzip"
Bzip::Reader.new("foo.bz2").each_line do |line|
  p line
end
```

TODO: Write usage instructions here

## Development

TODO: Write development instructions here

## Contributing

1. Fork it ( https://github.com/[your-github-name]/Bzip/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [[your-github-name]](https://github.com/[your-github-name]) Jonathan Badger - creator, maintainer
