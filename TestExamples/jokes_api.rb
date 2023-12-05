require "net/http"
require "json"
url = URI("https://official-joke-api.appspot.com/random_joke")
json_response = Net::HTTP.get(url)

hash_response = JSON.parse(json_response)
puts hash_response["setup"]
gets
puts hash_response["punchline"]
# puts hash_response

puts (if 1 then 2 else 3 end) # => 2
puts 1 ? 2 : 3 # => 2
x = if 1 then 2 else 3 end
puts x# => 2