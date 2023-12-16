require 'date'
class Dinosaur
@base_sound = "rawrr"

def initialize(sound = nil)
@sound = sound || self.class.base_sound
end

def speak
@sound
end

def try_to_speak
@base_sound
end

def count_and_store_sound_length
@sound.chars.each_with_index do |char, i|
@sound_length = i + 1
p "#{char}: #{sound_length}"
end
end

def sound_length
@sound_length
end

def self.base_sound
@base_sound
end
end

puts "hello"

# dino_1 = Dinosaur.new
# dino_2 = Dinosaur.new "grrr"

Dinosaur.base_sound
puts "hey"
# dino_2.speak
# dino_1.try_to_speak

puts "Ruby Version: "+RUBY_VERSION
puts "Ruby Patch Level: "+RUBY_PATCHLEVEL.to_s
puts Time.new
# puts today