require('rspec')
require('anagrams_and_antigrams')

describe('String#anagram') do
  it("checks to see if user's input is an anagram or antigram") do
  expect("bury".anagram("ruby")).to(eq("These words are anagrams"))
  end
  it("checks to see if user's input is an anagram or antigram regardless of case") do
  expect("Bury".anagram("Ruby")).to(eq("These words are anagrams"))
  end
end
