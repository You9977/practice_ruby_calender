require 'date'

def today(y,m,d)
  today = Date.new(y,m,d)
end

today = today(2021,10,9)
year  = today.year
month = today.month
last_day = Date.new(year,month,-1).day
first_day_wday =  Date.new(year,month,1).wday

title = today.strftime('%B') + " " + year.to_s
wday = %w(Su Mo Tu We Th Fr Sa)

puts title.center(21)
puts wday.join(" ")
print "   " * first_day_wday

wday = first_day_wday

(1..last_day).each do |date|
  print date.to_s.rjust(2) + " "
    wday += 1
    if wday % 7 == 0
      print "\n"
    end    
end
print "\n"