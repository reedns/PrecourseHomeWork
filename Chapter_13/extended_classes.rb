class Array
  def shuffle
    array = self
    shuffle_rec array, []
  end
  def shuffle_rec unshuffled, shuffled
    if unshuffled.length == 0
      return shuffled
    end 
    still_unshuffled = []
    counter = 0
    random = rand(unshuffled.length)
    unshuffled.each do |word|
      if counter == random
        shuffled.push word
      else
        still_unshuffled.push word
      end
    counter = counter + 1
    end
    shuffle_rec still_unshuffled, shuffled
  end
end

class Integer
  def modern_roman_numeral
    hund = self%1000/100
    ten = self%100/10
    one = self%10
    
    numeral =           'M' * (self/1000)
    numeral = numeral + 'D' * (self%1000/500)
    if hund == 9
      numeral = numeral + 'CM'
    elsif hund == 4
      numeral = numeral + 'CD'
    else
    numeral = numeral + 'C' * (self%500/100)
    end

    if ten == 9
      numeral = numeral + 'XC'
    elsif ten == 4
      numeral = numeral + 'IX'
    else
      numeral = numeral + 'L' * (self%100/50)
      numeral = numeral + 'X' * (self%50/10)
    end

    if one == 9
      numeral = numeral + 'IX'
    elsif one == 4
      numeral = numeral + 'IV'
    else 
      numeral = numeral + 'V' * (self%10/5)
      numeral = numeral + 'I' * (self%5/1)
    end
  end  

end

array = [1,2,3,4]
puts array.shuffle

puts 174.modern_roman_numeral

