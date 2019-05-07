# Tolerance

Regards almost of all typo as tolerance

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'tolerance'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tolerance

## Usage

You can use only installation. No special setup is required.

```ruby
class Foo
  def hello
    __method__
  end

  def self.hello
    __method__
  end
end

foo = Foo.new

foo.hello   # => :hello
foo.helle   # => :hello
foo.hellooo # => :hello

Foo.hello   # => :hello
Foo.helle   # => :hello
Foo.hellooo # => :hello
```

Regards almost of all typo as tolerance...!! Goodbye typo, forever..!!

*CAUTION: This gem is for development only*

## License

[MIT License](https://opensource.org/licenses/MIT)
