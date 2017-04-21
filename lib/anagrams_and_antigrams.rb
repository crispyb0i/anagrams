class String
  define_method(:anagram) do |word2|

  input1 = self.downcase.split("")
  input2 = word2.downcase.split("")

  word_counter = Hash.new()

  if input1.length !== input2.length
    return false
  end

  input1.each() do |character|
    if word_counter[character] === nil
    word_counter[character] = 1
    elsif word_counter[character] += 1
    end


  end
  return counts
end
