# Write a program that displays a table of contents so that it looks like this:
#                          Table of Contents
#          Chapter 1: Numbers						page 1
#          Chapter 2: Letters						page 5
#          Chapter 3: Variables						page 9

page_width = 100
str = "Table of Contents"
topic1 = "Numbers"
pageNoTopic1 = "page 1"
topic2 = "Letters"
pageNoTopic2 = "page 5"
topic3 = "Variables"
pageNoTopic3 = "page 9"
puts (str.center(page_width))
puts ("Chapter 1: #{topic1}".ljust(page_width))
puts ("     #{pageNoTopic1}".rjust(page_width))
puts ("Chapter 2: #{topic2}".ljust(page_width))
puts ("     #{pageNoTopic2}".rjust(page_width))
puts ("Chapter 3: #{topic3}".ljust(page_width))
puts ("     #{pageNoTopic3}".rjust(page_width))