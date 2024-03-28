require 'httparty'
require 'json'

response = HTTParty.get('https://api.github.com/users/jnunemaker/repos')

name = response.map {|x| x["name"]}
desc = response.map {|x| x["description"]}
star = response.map {|x| x["stargazers_count"]}
url = response.map {|x| x["url"]}
most = star.max
ar =  []
(0..name.length()).each do |i|
    ar += [[name[i], desc[i], star[i], url[i]]]
end

(0..ar.length()).each do |i|
    puts ar[i] if ar[i].include? most
end




