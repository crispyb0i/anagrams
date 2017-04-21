class String
  define_method(:anagram) do |word2|

    input1 = self.downcase.split("")
    input2 = word2.downcase.split("")
    word_counter = Hash.new()
    counter_sum = 0
    is_anagram = false
    is_word_vowels = ["a","e","i","o","u","y"]
    antigram1 = input1.to_a
    antigram2 = input2.to_a

    if (is_word_vowels & input1.to_a) == [];
      "You need to input actual words!"
    else
      if (antigram1 & antigram2) == [];
        "these words are antigrams!"
      else
        if input1.length != input2.length
        false
        end

        input1.each do |character|
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

        word_counter.each do |value|
          counter_sum += word_counter.fetch(value[0])
        end

        if counter_sum === 0
          is_anagram = true
        else
          return false
        end

        if is_anagram === true
          if input1.reverse() === input1 && input2.reverse() === input2
            return "These words are anagrams and also palindromes!"
          else
        return "These words are anagrams!"
          end
        end
      end
    end
  end
end
