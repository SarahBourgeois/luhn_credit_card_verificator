# :credit_card: LuhnCreditCardVerificator :credit_card:

Verify the validity of a credit card thanks to the the most reliable Luhn algorithm !!

As the name of the package assumes, the verification is based on the Luhn algorithm. It allows you to :
- check easier if numbers of a credit card are valid or not.
- get the issuing bank
- or the both

rubygem website : https://rubygems.org/gems/luhn_credit_card_verificator

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add luhn_credit_card_verificator

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install luhn_credit_card_verificator

## Usage

###  You can use very easy 3 functions : 

----

#### :one: Verify if the numbers of the credit card are ok
```
is_verif_card(credit_card_number)
```
Example : 
```
card_number_from_user = 6011000990139424
result = LuhnCreditCardVerificator.is_verif_card(card_number_from_user);
puts result

>>  return true or false
```

__If result is `True` so the card is OK.__

__If result is `False` so the card is WRONG__

---

#### :two: Get the issuing bank information 
```
get_issuing_bank(credit_card_number)
```
Example : 
```
card_number_from_user = 4556737586899855
result = LuhnCreditCardVerificator.get_issuing_bank(card_number_from_user);
puts result

>>  return VISA 
```

__For the moment only this issuing bank are manage :__

`MASTERCARD`  or `VISA` or `AMERICAN EXPRESS` or `UNKNOWN` 

---

#### :three: Get the both (If credit card number are ok and issuing bank)

```
get_all_credit_card_information(credit_card_number);
```
Example :
```
require 'luhn_credit_card_verificator';

card_number_from_user = 4556737586899855
result = LuhnCreditCardVerificator.get_all_credit_card_information(card_number_from_user);
puts result

>>  return {valid => true, "bank" => VISA} 
```
__The return is a so a hash__: you've to manage the response to take the information thanks to the key/value.


### Accepted input 
- string (with space or not)
- numbers


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/SarahBourgeois/luhn_credit_card_verificator. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/luhn_credit_card_verificator/blob/master/CODE_OF_CONDUCT.md).

## Code of Conduct

Everyone interacting in the LuhnCreditCardVerificator project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/SarahBourgeois/luhn_credit_card_verificator/blob/master/CODE_OF_CONDUCT.md).
