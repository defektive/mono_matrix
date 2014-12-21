# mono_matrix
[![Gem Version](https://badge.fury.io/rb/mono_matrix.svg)](http://badge.fury.io/rb/mono_matrix)
[![Code Climate](https://codeclimate.com/github/defektive/mono_matrix/badges/gpa.svg)](https://codeclimate.com/github/defektive/mono_matrix)

A simple way to control your Monoprice HDX 4x2 Switcher/Splitter. Originally created for
https://github.com/defektive/hdx-api


## Installation

Add this line to your application's Gemfile:

gem 'monoprice_matrix'

And then execute:

$ bundle

Or install it yourself as:

$ gem install monoprice_matrix

## Usage

```

matrix = MonoMatrix::Switcher.new "/dev/ttyUSB0"

# set output A to use input 1
matrix.switch "A", 1
```

## Contributing

1. Fork it ( https://github.com/defektive/mono_matrix/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
