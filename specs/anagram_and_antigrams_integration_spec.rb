
require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)
# add own description
describe('the anagram and antigram path', {:type => :feature}) do
  it('processes the user entry and checks to see if their input is an anagram or an antigram') do
    visit('/')
    fill_in('form', from: 'anagram')
    click_button('Send')
    expect(page).to have_content('These words are anagrams')
  end
end
