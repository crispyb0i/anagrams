
require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)
describe('the anagram and antigram path', {:type => :feature}) do
  it('processes the user entry and checks to see if their input is an anagram or an antigram') do
    visit('/')
    fill_in('anagram1', :with => 'hello')
    fill_in('anagram2', :with => 'olleh')
    click_button('Send')
    expect(page).to have_content('These words are anagrams!')
  end
end
