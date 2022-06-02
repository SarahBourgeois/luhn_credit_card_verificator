# LuhnCreditCardVerificator

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/luhn_credit_card_verificator`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add luhn_credit_card_verificator

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install luhn_credit_card_verificator

## Usage
Very easy to use with the method : is_verif_card(numbers_of_credit_cards) : return a boolean

```
require 'luhn_credit_card_verificator';

card_number_from_user = 6011000990139424
result = LuhnCreditCardVerificator.is_verif_card(card_number_from_user);
puts result

>>  return true or false
```

__If result is `True` so the card is OK.__

__If result is `False` so the card is WRONG__

Note :
You don't need to clean or remove special characters before to call the method with the client card in parameter.
You can directly pass a string or a number.


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/luhn_credit_card_verificator. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/luhn_credit_card_verificator/blob/master/CODE_OF_CONDUCT.md).

## Code of Conduct

Everyone interacting in the LuhnCreditCardVerificator project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/luhn_credit_card_verificator/blob/master/CODE_OF_CONDUCT.md).
