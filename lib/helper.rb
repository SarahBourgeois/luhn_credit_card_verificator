class Helper

  LUHN_NUMBER_TO_SUBTRACT = 9;

  def self.format_input(card)
    clean_card = card.gsub(/\s+/, "").split("");
    return clean_card.reverse!;
  end

  def self.double_number(card_number)
    double_number = card_number.to_i * 2;
    double_number = double_number - LUHN_NUMBER_TO_SUBTRACT if double_number > 9;
    return double_number;
  end

  def self.check_card_validity(sum)
    return sum % 10 == 0;
  end

end
