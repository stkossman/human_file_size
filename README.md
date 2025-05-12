# Human File Size
[![Gem Version](https://badge.fury.io/rb/human_file_size.svg?icon=si%3Arubygems)](https://badge.fury.io/rb/human_file_size)

**Human File Size** is a simple Gem for formatting file sizes into a human-readable format.

## Installation
Add this line to your application's `Gemfile`:

```ruby
gem 'human_file_size'
```

And then execute:
```bash
bundle install
```

Or install it yourself as:
```bash
gem install human_file_size
```

## Usage
```ruby
require 'human_file_size'

HumanFileSize.format(100)          # => "100.00 B"
HumanFileSize.format(1024)         # => "1.00 KB"
HumanFileSize.format(1536)         # => "1.50 KB"
HumanFileSize.format(1048576)      # => "1.00 MB"
HumanFileSize.format(2621440, precision: 1) # => "2.5 MB"
HumanFileSize.format(1572864576)   # => "1.50 GB"
```

## License
This Gem is distributed under the MIT License. See the [LICENSE.txt](LICENSE) fire for details

## Author
- [RubyGems](https://rubygems.org/profiles/kossman)
- [Github](https://github.com/stkossman)
