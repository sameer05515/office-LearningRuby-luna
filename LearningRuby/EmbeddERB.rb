#    Embedding erb in Your Code
#    So far we’ve shown erb running as a command-line filter. However, the most common use
#    is to use it as a library in your own code. (This is what Rails does with its .erb templates.)


#--------------------------------
  
puts "ENV['SHELL']",ENV['SHELL']
puts "ENV['HOME'] ",ENV['HOME']
puts "ENV['USER'] ",ENV['USER']
puts "ENV.keys.size ",ENV.keys.size
puts "ENV.keys[0, 4] ",ENV.keys[0, ENV.keys.size-1]

#---------------------------------

require 'erb'

SOURCE =
%{<% for number in min..max %>
The number is <%= number %>
<% end %>
}
erb = ERB.new(SOURCE)
min = 4
max = 6
puts erb.result(binding)

#    produces
#    The number is 4
#    The number is 5
#    The number is 6

#    Notice how we can use local variables within the erb template. This works because we pass
#    the current binding to the result method. erb can use this binding to make it look as if the
#    template is being evaluated in the context of the calling code.