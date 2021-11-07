# StarlingRB

**This library is a work in progress**

StarlingRB is a Ruby library for interacting with the Starling Bank API.

## Installation

Add this line to your application's Gemfile:

```ruby
gem "starlingrb", require: "starling"
```

## Usage

### Set Client Details

Firstly you'll need to set an Access Token.

```ruby
@client = Starling::Client.new(access_token: "")
```

### Accounts

```ruby
@client.accounts.list
@client.accounts.balance(uid: "account_uid")
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/deanpcmad/starlingrb.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
