# Dictionary sort. Your sorting algorithm is pretty good, sure. But there was
# always that slightly embarrassing thing you were hoping I’d gloss over,
# right? About the capital letters? Your sorting algorithm is good for general-
# purpose sorting, but when you sort strings, you’re using the ordering of
# the characters in your fonts (their Unicode values) rather than true dictio-
# nary ordering. In a dictionary, case (upper or lower) is irrelevant to the
# ordering. So, make a new method to sort words (something like dictio-
# nary_sort). Remember, though, that if the user gives your program words
# starting with capital letters, it should return the same words with those
# same capital letters, but ordered as you’d find them in a dictionary.


# def dictionary_sort(arr)
# return arr if arr.length < 2

# pivot = arr.pop
# less = arr.select{|x| x.downcase < pivot.downcase}
# more = arr.select{|x| x.downcase >= pivot.downcase}

# dictionary_sort(less) + [pivot] + dictionary_sort(more)
# end

# words = ["can","feel","singing.","like","A","can"]
# puts(dictionary_sort(words).join(' '))


def dictionary_sort(arr)
if arr.length < 1
arr # an empty array is already sorted
else
pivot = arr.pop

smaller_elements = []
larger_elements = []

arr.each do |elem|
if elem.downcase < pivot.downcase
smaller_elements.push(elem)
else
larger_elements.push(elem)
end
end

smaller_sorted = dictionary_sort(smaller_elements)
larger_sorted = dictionary_sort(larger_elements )

smaller_sorted + [pivot] + larger_sorted
end
end

puts(dictionary_sort(["can","feel","singing.","like","A","can"]))