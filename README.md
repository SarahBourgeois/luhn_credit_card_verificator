# LuhnCreditCardVerificator

Verify the validity of a credit card thanks to the the most reliable Luhn algorithm !!

As the name of the package assumes, the verification is based on the Luhn algorithm. It allows you to check easier if numbers of a credit card are valid or not.


## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add luhn_credit_card_verificator

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install luhn_credit_card_verificator

## Usage
3 functions you can use : 




```
require 'luhn_credit_card_verificator';

card_number_from_user = 6011000990139424
result = LuhnCreditCardVerificator.is_verif_card(card_number_from_user);
puts result

>>  return true or false
```

__If result is `True` so the card is OK.__

__If result is `False` so the card is WRONG__

### Accepted input 
- string 
- numbers


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/SarahBourgeois/luhn_credit_card_verificator. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/luhn_credit_card_verificator/blob/master/CODE_OF_CONDUCT.md).

## Code of Conduct

Everyone interacting in the LuhnCreditCardVerificator project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/luhn_credit_card_verificator/blob/master/CODE_OF_CONDUCT.md).
