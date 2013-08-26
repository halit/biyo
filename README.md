[![Build Status](https://travis-ci.org/halitalptekin/biyo.png?branch=develop)](https://travis-ci.org/halitalptekin/biyo)
[![Code Climate](https://codeclimate.com/github/halitalptekin/biyo.png)](https://codeclimate.com/github/halitalptekin/biyo)
[![Gem Version](https://badge.fury.io/rb/biyo.png)](http://badge.fury.io/rb/biyo)
# Biyo

Bio creator for hackers.

## Installation

Add this line to your application's Gemfile:

    gem 'biyo'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install biyo

## Usage

You can use on command line

    $ biyo

    $ How many fields in your bio? 3
    $ 1. field key: Name
    $ 1. field value: Halit
    $ 2. field key: Surname
    $ 2. field value: Alptekin
    $ 3. field key: Programming Skills
    $ 3. field value: python,ruby,php,perl,c,c++

    $ {
      "Name": "Halit",
      "Surname": "Alptekin",
      "Programming Skills": [
        "python",
        "ruby",
        "php",
        "perl",
        "c",
        "c++"
      ]
    }

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
