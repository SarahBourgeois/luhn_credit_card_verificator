class Helper

  def self.format_input(card)
    clean_card = card.gsub(/\s+/, "").split("");
    return clean_card.reverse!;
  end

  def self.double_number(card_number)
    double_number = card_number.to_i * 2;
    if double_number > 9
      double_number = double_number -9;
    end
    return double_number;
  end

  def self.check_card_validity(card_sum, card_sum2)
    sum = card_sum + card_sum2;
    return sum % 10 == 0;
  end

end
