# Tolerance

Regards almost of all typo as tolerance:wave::alien:

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

  def self.say!
    __method__
  end
end

foo = Foo.new

foo.hello # => :hello
foo.pello # => :hello
foo.hel_o # => :hello
Foo.say!  # => :say!
Foo.sey!  # => :say!
Foo.sayyy # => :say!
```

Regards almost of all typo as **tolerance**...!! Bye typo, forever..:wave::alien:

## License

[MIT License](https://opensource.org/licenses/MIT)
