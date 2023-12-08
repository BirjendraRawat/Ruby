# Safer photo downloading. Adapt the photo-downloading/file-renaming
# program to your computer, and add some safety features to make sure
# you never overwrite a file. One method you might find useful is File.exist?
# (pass it a filename, and it’ll return true or false). Another method is exit
# which is like an evolved form of return—it kills your program right where
# it stands. This is good for spitting out an error message and then quitting.

# For Katy, with love.

# This is where she stores her photos.
# Just for my own convenience, I'll go there now.

# Dir.chdir("C:/Documents and Settings/Katy/PictureInbox")

Dir.chdir("/home/birjendra/Pictures/TransferedPhotos")

# First we find all of the photos to be moved.
pic_names = Dir["/home/birjendra/RVJ_Infotech/Pics186/**/*.jpg"]

puts "What would you like to call this batch?"
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files: "

# This will be our counter. We'll start at 1 today,
# though normally I like to count from 0.
pic_number = 1
pic_names.each do |name|
print "." # This is our "progress bar".

new_name = if pic_number < 10
"#{batch_name}0#{pic_number}.jpg"
else
"#{batch_name}#{pic_number}.jpg"
end

# This renames the photo, but since 'name'
# has a big long path on it, and 'new_name'
# doesn't, it also moves the file to the
# current working directory, which is now
# Katy's PictureInbox folder.
# Since it's a *move*, this effectively
# downloads and deletes the originals.
# And since this is a memory card, not a
# hard drive, each of these takes a second
# or so; hence, the little dots let her
# know that the program isn't hanging.
File.rename(name, new_name)
# Finally, we increment the counter.
pic_number = pic_number + 1
end
puts # This is so we aren't on the progress bar line.
puts "Done, cutie!"