caps_array = [] # array literal, same as Array.new
caps_hash = {} # hash literal, same as Hash.new


caps_array[0] = "Oslo"
caps_array[1] = "Paris"
caps_array[2] = "Madrid"
caps_array[3] = "Rome"
caps_hash["Norway"] = "Oslo"
caps_hash["France"] = "Paris"
caps_hash["Spain" ] = "Madrid"
caps_hash["Italy" ] = "Rome"

caps_array.each do |city|
puts city
end
caps_hash.each do |country, city|
puts "#{country}: #{city}"
end

weird_hash = Hash.new
weird_hash[12] = "monkeys"
weird_hash[[]] = "the void"
weird_hash[Time.new] = "no time like the present"
puts weird_hash

god_bless_the_90s = 1990..1999
puts god_bless_the_90s