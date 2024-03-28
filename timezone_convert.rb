require 'httparty'
require 'json'
response = HTTParty.get("http://worldtimeapi.org/api/timezone/Europe/London")
rep =  response.to_s
pattern = /(\d+-\d+-\d+.\d+.\d+.\d+).+([A-Z][a-z]+.[A-Z][a-z]+)/
match = rep.match(pattern)
puts "The current time in #{match[2]} is #{match[1]}."

