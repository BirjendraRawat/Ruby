# Rite of Passage: Sorting
# Write a sort method that takes an array and returns a sorted version
# of it.

def sort(arr)
if arr.length < 1
arr # an empty array is already sorted
else
pivot = arr.pop
smaller_elements = []
larger_elements = []
arr.each do |elem|
if elem < pivot
smaller_elements.push(elem)
else
larger_elements.push(elem)
end
end
smaller_sorted = sort(smaller_elements)
larger_sorted = sort(larger_elements )
smaller_sorted + [pivot] + larger_sorted
end
end
puts(sort(["can","feel","singing","like","a","can"]))