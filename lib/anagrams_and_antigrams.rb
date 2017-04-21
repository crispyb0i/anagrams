class String
  define_method(:anagram) do |word2|

  input1 = self.downcase.split("")
  input2 = word2.downcase.split("")

  word_counter = Hash.new()
  counter_sum = 0

  if input1.length != input2.length
    return false
  end

  input1.each() do |character|
    if word_counter[character] === nil
    word_counter[character] = 1
    elsif word_counter[character] += 1
    end
  end

  input2.each do |character|
    if word_counter[character] === nil
      return false
    else word_counter[character] -= 1
    end
  end

  counter = 0
  word_counter.each do |value|
    counter_sum += word_counter.fetch(value[0])
  end

  if counter_sum === 0
    return "These words are anagrams"
  else
    return false
  end

end
end
