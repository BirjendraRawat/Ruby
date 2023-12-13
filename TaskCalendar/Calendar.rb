require 'date'
# require 'colorize'

class Calendar
  
  def initialize
  end

  def print_calendar(year, month)
    date_current = Time.new
    wide = 20
    start_date = Date.new(year, month, 1)
    end_date = Date.new(year, month, -1)
    puts "----------------------"
    puts "#{start_date.strftime("%B %Y")}".center(wide)
    puts "----------------------"
    puts " Su Mo Tu We Th Fr Sa"
    (start_date..end_date).each do |date|
      # print date.day.to_s.rjust(3)
        if date.strftime("%A") == "Monday" && date.day == 1
          if date.day == date_current.day && date.month == date_current.month && date.year == date_current.year
            print "   "+ "\e[31m#{date.day.to_s.rjust(3)}\e[0m"
          else
            print "   " + date.day.to_s.rjust(3)
          end
        elsif date.strftime("%A") == "Tuesday" && date.day == 1
          if date.day == date_current.day && date.month == date_current.month && date.year == date_current.year
            print "      " + "\e[31m#{date.day.to_s.rjust(3)}\e[0m"
          else
            print "      " + date.day.to_s.rjust(3)
          end
          elsif date.strftime("%A") == "Wednesday" && date.day == 1
          if date.day == date_current.day && date.month == date_current.month && date.year == date_current.year
            print "         "+ "\e[31m#{date.day.to_s.rjust(3)}\e[0m"
          else
            print "         " + date.day.to_s.rjust(3)
          end
          elsif date.strftime("%A") == "Thursday" && date.day == 1
          if date.day == date_current.day && date.month == date_current.month && date.year == date_current.year
            print "            "+ "\e[31m#{date.day.to_s.rjust(3)}\e[0m"
          else
            print "            " + date.day.to_s.rjust(3)
          end
          elsif date.strftime("%A") == "Friday" && date.day == 1
          if date.day == date_current.day && date.month == date_current.month && date.year == date_current.year
            print "               "+ "\e[31m#{date.day.to_s.rjust(3)}\e[0m"
          else
            print "               " + date.day.to_s.rjust(3)
          end
          elsif date.strftime("%A") == "Saturday" && date.day == 1
          if date.day == date_current.day && date.month == date_current.month && date.year == date_current.year
            print "                  "+ "\e[31m#{date.day.to_s.rjust(3)}\e[0m"
          else
            print "                  " + date.day.to_s.rjust(3)
          end
        else
        

          if date.day == date_current.day && date.month == date_current.month && date.year == date_current.year
            print "\e[31m#{date.day.to_s.rjust(3)}\e[0m"
          else
            print date.day.to_s.rjust(3)
          end
        end

          print "\n" if date.saturday?
    end
  puts
  width = 16
    puts "\e[31m << \e[0m".ljust(width) + "\e[31mToday \e[0m".center(width) + "\e[31m >> \e[0m".rjust(width)
  end
end
obj1 = Calendar.new
obj1.print_calendar(2023, 12)



# green_rgb = "0;128;0"


# date_current = Time.new
# puts date_current
 # t = Date.today
 # puts t.strftime("%d")
 # puts t.strftime("%e")
 # puts "I am now red".red

current_date = Date.today
current_month = current_date.strftime("%m")
current_month = current_month.to_i
# puts current_month
current_year = current_date.strftime("%Y")
puts current_year

x = 1
while x <= 1000
   goto = []
   goto << "1. Prev"
   goto << "2. Today"
   goto << "3. Next"
   goto << "4. Exit"
   puts goto
   user_input = gets.chomp.to_i
   
   if current_month == 1 && user_input == 1
      current_year = current_year.to_i - 1
      current_month -= 1
      if current_month == 0
        current_month = 12
      obj1.print_calendar(current_year,current_month)
    else
      obj1.print_calendar(current_year,current_month)
    end
      
    elsif current_month == 12 && user_input == 3
       current_year = current_year.to_i + 1
       current_month += 1
         if current_month == 13
            current_month = 1
            # puts current_year
            # puts current_month
            obj1.print_calendar(current_year,current_month)
          else
            current_year = current_year + 1
            obj1.print_calendar(current_year,current_month)
          end
    else
      if user_input == 1 || user_input == 2 || user_input == 3
        if user_input == 1
           # puts current_month
           current_year = current_year.to_i
           current_month = current_month - 1
           # puts current_month
           # puts current_year
            
              if current_month == 0
                current_month = 12
                # puts current_month
                obj1.print_calendar(current_year,current_month)
              else
                # puts current_month
                obj1.print_calendar(current_year,current_month)
              end

        elsif user_input == 3
          current_month = current_month + 1
          if current_month == 13
          current_month = 1
          obj1.print_calendar(current_year,current_month)
          else
            obj1.print_calendar(current_year,current_month)
          end
    
        elsif user_input == 2
          current_date = Date.today
          current_month = current_date.strftime("%m")
          current_month = current_month.to_i
          current_year = current_date.strftime("%Y")
          current_year = current_year.to_i
          obj1.print_calendar(current_year,current_month)
        end
        # puts "right input"
        elsif user_input == 4
         break
        else
          puts "Please enter in 1 or 2 or 3 or 4 ONLY"
  end
end
x += 1
end 