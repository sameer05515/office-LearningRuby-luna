today = Time.now
if today.saturday?
puts "Do chores around the house"
elsif today.sunday?
puts "Relax"
else
puts "#{today} Go to work"
end