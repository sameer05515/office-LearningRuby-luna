class FileWrite
  File.open("C:/rubyWorkspace/LearningRuby/files/aaaaaaa.txt", "w") do |file|
    file.puts "Hello"
    file.puts "1 + 2 = #{1+2}"
    for i in ['fee', 'fi', 'fo', 'fum']
      file.puts i , "\n"
    end
  end
  # Now read the file in and print its contents to STDOUT
  puts File.read("C:/Users/796412/Desktop/aaaaaaa.txt")
end