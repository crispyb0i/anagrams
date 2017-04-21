require('sinatra')
require('sinatra/reloader')
require('./lib/anagrams_and_antigrams')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/anagram') do
  @anagram = (params.fetch('anagram1')).anagram('anagram2')
  erb(:anagram)
end
