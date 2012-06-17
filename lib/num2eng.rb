class Num2Eng

  # 数字と英語を結びつける
  NUM_ENG = {'0' => 'zero',
      '1' => 'one',
      '2' => 'two',
      '3' => 'three',
      '4' => 'four',
      '5' => 'five',
      '6' => 'six',
      '7' => 'seven',
      '8' => 'eight',
      '9' => 'nine',
      '10' => 'ten',
      '11' => 'eleven',
      '12' => 'twelve',
      '13' => 'thirteen',
      '14' => 'fourteen',
      '15' => 'fifteen',
      '16' => 'sixteen',
      '17' => 'seventeen',
      '18' => 'eighteen',
      '19' => 'nineteen',
      '20' => 'twenty',
      '30' => 'thirty',
      '40' => 'forty',
      '50' => 'fifty',
      '60' => 'sixty',
      '70' => 'seventy',
      '80' => 'eighty',
      '90' => 'ninety'
  }

  def get (num)
    if num.size == 1
      NUM_ENG[num]
    elsif num.size == 2
      get_ten(num)
    elsif num.size == 3
      get_hundred(num)
    elsif num.size == 4
      get_thousand(num)
    end
  end

  private
  def get_one (num)
    NUM_ENG[num]
  end

  def get_ten (num)
    if num.to_i < 20
      num = num[1] if num.to_i.to_s != num
      NUM_ENG[num]
    elsif num.to_i % 10 == 0
      NUM_ENG[num]
    else
      NUM_ENG[num[0] + '0'] + '-' + NUM_ENG[num[1]]
    end
  end

  def get_hundred (num)
    if num.to_i % 100 == 0
      NUM_ENG[num[0]] + ' hundred'
    else
      NUM_ENG[num[0]] + ' hundred ' + get_ten(num[1..2])
    end
  end

  def get_thousand (num)
    if num.to_i % 1000 == 0
      NUM_ENG[num[0]] + ' thousand'
    elsif num.to_i % 100 == 0
      get_ten(num[0..1]) + ' hundred'
    else
      get_ten(num[0..1]) + ' hundred ' + get_ten(num[2..3])
    end
  end

end

