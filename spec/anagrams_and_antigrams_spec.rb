require('rspec')
require('anagrams_and_antigrams')

describe('String#anagram') do
  it("checks to see if user's input is an anagram or antigram") do
  expect("hello".anagram("olleh")).to(eq("These words are anagrams!"))
  end
  it("checks to see if user's input is an anagram or antigram regardless of case") do
  expect("Bury".anagram("Ruby")).to(eq("These words are anagrams!"))
  end
  it("checks to see if user's anagram is also a palindrome") do
  expect("racecar".anagram("racecar")).to(eq("These words are anagrams and also palindromes!"))
  end
  it("checks to see if user's inputs are actual words") do
  expect("bpz".anagram("zbp")).to(eq("You need to input actual words!"))
  end
  it("checks to see if user's inputs are antigrams") do
  expect("hi".anagram("bye")).to(eq("these words are antigrams!"))
  end
  it("checks to see if code works for multiple word sentences") do
  expect("taco cat".anagram("cat taco")).to(eq("These words are anagrams!"))
  end
end
