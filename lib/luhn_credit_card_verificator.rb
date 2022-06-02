# frozen_string_literal: true

require_relative "luhn_credit_card_verificator/version"
require "Helper"
require "enum"

module LuhnCreditCardVerificator

  class Error < StandardError; end

    # Verify if numbers of a credit card are valid
    #
    # Example:
    #   >> is_card_valid(4556737586899855)
    #   >> is_card_valid("4556 7375 8689 9855")
    #   => true
    #
    # Arguments:
    #   credit_card_number: (String) or (Integer)
    def self.is_card_valid(card_number)
      card_array_pair = Array.new;
      card_array_impair = Array.new;
      i =0;

      begin
        format_card = format_input(card_number.to_s);
        format_card.each { |item|
          number_to_push = double_number(item);
          card_array_pair.push(item.to_i) if i%2 == 0;
          card_array_impair.push(number_to_push) if i%2 != 0;
          i = i +1
        }

        result = check_card_validity(card_array_pair.sum, card_array_impair.sum);
        return result;
      rescue
        return false;
      end
    end

    # Get the issuing bank of a credit card
    #
    # Example:
    #   >> get_issuing_bank(4556737586899855)
    #   >> get_issuing_bank("4556 7375 8689 9855")
    #   => VISA
    #
    # Arguments:
    #   credit_card_number: (String) or (Integer)
    def self.get_issuing_bank(credit_card_number)
      card = credit_card_number.to_s
      return BANK_TYPE::AMEX if card[0..1] == BANK_NUMBER::AMEX_NUMBER[0] or card[0..1] == BANK_NUMBER::AMEX_NUMBER[1];
      return BANK_TYPE::VISA if card[0] == BANK_NUMBER::VISA_NUMBER;
      return BANK_TYPE::MASTERCARD if card[0..1].to_i.between?(BANK_NUMBER::MASTERCARD_NUMBER[0], BANK_NUMBER::MASTERCARD_NUMBER[4]);
    end

  end

