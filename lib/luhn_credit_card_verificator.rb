# frozen_string_literal: true

require_relative "luhn_credit_card_verificator/version"
require "Helper"

module LuhnCreditCardVerificator

  class Error < StandardError; end

  class LuhnCreditCardVerificator

    # verify is credit card numbers are ok
    def self.is_credit_card_valid(card_number)
      card_array_pair = Array.new;
      card_array_impair = Array.new;
      i =0;

      begin
        format_card = format_input(card_number.to_s);
        format_card.each { |item|
          number_to_push = double_number(item);
          if i%2 == 0
            card_array_pair.push(item.to_i);
          end
          if i%2 != 0
            card_array_impair.push(number_to_push)
          end
          i = i +1
        }

        card_sum = card_array_pair.sum;
        card_sum2 = card_array_impair.sum;

        result = check_card_validity(card_sum, card_sum2);
        return result;
      rescue
        return false;
      end
    end
  end

end
